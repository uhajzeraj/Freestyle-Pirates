<?php
	if (!defined('PKOSITE'))
		die('Go away!');
		
	require_once('classes'.DIRECTORY_SEPARATOR.'class.iteminfo.php');					// ItemInfo Class
		
	$template = 'auction';
	
			$auctions	= unserialize(file_get_contents(BASEDIR.'data'.DIRECTORY_SEPARATOR.'auction'.DIRECTORY_SEPARATOR.'point.dat'));
			//Last ID 2
			$auctions[4] = array( 'id' => 4,
								  'item_id' => 192,
								  'iteminfo' => ItemInfo::GetItemInfo(192),
								  'start_bid' => 1,
								  'last_bid' => 1,
								  'last_bid_id' => 0,
								  'start_time' =>time(),
								  'end_time' =>time()+345600,
								  'status' => 1,
								  'given' => 0,
								  'bids' => array(),
								  'amount' => 1,
								);
			@file_put_contents(BASEDIR.'data'.DIRECTORY_SEPARATOR.'auction'.DIRECTORY_SEPARATOR.'point.dat',@serialize($auctions));
			
	
	function mask ( $str, $start = 0, $length = null ) {
        $mask = preg_replace ( "/\S/", "*", $str );
        if ( is_null ( $length )) {
            $mask = substr ( $mask, $start );
            $str = substr_replace ( $str, $mask, $start );
        } else {
            $mask = substr ( $mask, $start, $length );
            $str = substr_replace ( $str, $mask, $start, $length );
        }
        return $str;
    }

	function GetAuctions($type="point") 
	{
		$auctions	= unserialize(file_get_contents(BASEDIR.'data'.DIRECTORY_SEPARATOR.'auction'.DIRECTORY_SEPARATOR.$type.'.dat'));
		return $auctions;
	}
	
	function PlaceBid($id,$bid,$type="point")
	{
		$auctions = GetAuctions();
		//Account::TakePoints($bid["amount"]);
		foreach($auctions as $key => $array)
		{
			if($array['id'] == $id)
			{
				if($auctions[$key]['last_bid_id'] > 0) {
					print_r($auctions[$key]['last_bid']);
					//Account::GivePoints($auctions[$key]['last_bid'],$auctions[$key]['last_bid_id']);
				}
				$auctions[$key]["last_bid"] = $bid["amount"];
				$auctions[$key]["last_bid_id"] = $bid["id"];
				$auctions[$key]["bids"][] = array( 'id' => $bid["id"],
										  'name' =>$bid["name"],
										  'amount' => $bid["amount"],
										  'date' => time(),
										  );
			}
		}
		file_put_contents(BASEDIR.'data'.DIRECTORY_SEPARATOR.'auction'.DIRECTORY_SEPARATOR.'point.dat',@serialize($auctions));
	}
	
	function GetAuction($id,$type="point")
	{
		$auction = array();
		foreach(GetAuctions() as $array)
		{
			if($array['id'] == $id)
			$auction = $array;
		}
		return $auction;
	}
	
	function ObtainItem($id)
	{
		$auctions = GetAuctions();
		foreach($auctions as $key => $array)
		{
			if($array['id'] == $id && $array['given'] != 1)
			{
				$auctions[$key]['given'] = 1;
				$auction = $auctions[$key];
				//$SendToBox = doQuery("INSERT INTO StorageBox VALUES(".$_SESSION['aid'].",".$auction['item_id'].",'0','','','".addslashes_mssql(trim($auction['icon']))."','".addslashes_mssql(trim($auction['name']))."',".$auction['amount'].")", DATABASE_AUCTION);
				Header('Location: '.$config['script_url'].'?act=auction');
			}
		}
		file_put_contents(BASEDIR.'data'.DIRECTORY_SEPARATOR.'auction'.DIRECTORY_SEPARATOR.'point.dat',@serialize($auctions));

	}
	
	if(!isLoggedIn())	
	{
		$oSmarty->assign('message',			array( 'type'		=> 'error', 'messages'	=> 'Please Log In!'	) );
	}
	else
	{
		$oSmarty->assign('state',			isset($_GET['state']) ? (int)$_GET['state'] : 0);
		$auctions = GetAuctions();
		if(isset($_GET['detail']) && (int)$_GET['detail'] > 0)
		{
			$template = 'detail';
			$auction = GetAuction($_GET['detail']);
			$oSmarty->assign('auction',		$auction);
			
			if(isset($_POST['item_id']))
			{
				if(isset($_POST['bid_price']) && (int)$_POST['bid_price'] > 0) {
					
					if($_POST['bid_price'] > $auction['last_bid']) {
						if($_POST['bid_price'] < 1) {
							$bid = array(	'id' => $_SESSION['aid'],
											'name' =>  mask ($_SESSION['name'],0,3),
											'amount' => $_POST['bid_price'],
										);
							PlaceBid($auction['id'],$bid,$type="point");
							Header('Location: '.$config['script_url'].'?act=auction&detail='.$auction['id']);
						}
						else
						{
							$oSmarty->assign('message',			array( 'type'		=> 'error', 'messages'	=> 'You do not have enough points to bid!'	) );
						}
					}else
					{
						$oSmarty->assign('message',			array( 'type'		=> 'error', 'messages'	=> 'Bid must be bigger than '.$auction['last_bid']	) );
					}
				}
				else
				{
					$oSmarty->assign('message',			array( 'type'		=> 'error', 'messages'	=> 'Please place a bid!'	) );
				}
			}
			
			if(isset($_POST['obtain']))
			{
				ObtainItem($auction['id']);
			}
		}
		else
		{
			$oSmarty->assign('auctions',		$auctions);
		}
	}
		

	$breadcrumbs	= array();

	$breadcrumbs[]	= array( 'caption'	=> 'Auction',
				 'url'		=> ''	);

	$oSmarty->assign('breadcrumbs',		$breadcrumbs);

	// Display page

	$oSmarty->display('file:pages/shop/site_'.$template.'.tpl');

?>