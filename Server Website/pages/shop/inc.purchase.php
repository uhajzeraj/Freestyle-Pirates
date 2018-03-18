<?php

	// ===================================================================================================
	// Package      : pkoSite
	// File         : inc.index.php
	// Version      : 1.0.0
	// Author       : SnowCrash
	// ===================================================================================================
	// History:
	//
	// v1.0.0       : release of the FINAL version ;o)
	// v0.0.3b      : some minor changes regarding filenames
	// v0.0.1       : first release
	// ===================================================================================================
	// Disclaimer   : To make it short - if you steal code you're a pathetic, little loser :-)
	// ===================================================================================================

	// Prevent people from calling this file directly! Normally it doesn't matter but its always better
	// being save than being sorry.


	if (!defined('PKOSITE'))
		die('Go away!');

	// ===================================================================================================
	// Include needed files
	require_once(BASEDIR.'classes'.DIRECTORY_SEPARATOR.'class.iteminfo.php');					// ItemInfo-class
	require_once(BASEDIR.'classes'.DIRECTORY_SEPARATOR.'class.shop.php');					// Shop-class
	require_once(BASEDIR.'pages'.DIRECTORY_SEPARATOR.'account'.DIRECTORY_SEPARATOR.'inc.account.chars.php');
	require_once(BASEDIR.'includes'.DIRECTORY_SEPARATOR.'inc.functions.store.php');
	
	function percent($amount, $percent)
	{
		$final_price = intval($amount * ( 1 - $percent/100));
		return $final_price;
	}

	if (isLoggedIn() && checkReferer() && !isBanned())
	{
		// Load ItemInfo
		$iteminfo		= new ItemInfo();
		if($_POST['type'] == 1)
			$ShopHandler	= new ShopHandler(MALL_DIR);
		else
			$ShopHandler	= new ShopHandler(AWARD_DIR);
			

		if ((!isset($_GET['sact'])) && (!isset($_POST['sact'])))
			$subaction		= '';
		else
			$subaction		= ((isset($_POST['sact'])) ? $_POST['sact'] : $_GET['sact']);

		$subaction		= strtolower(trim(preg_replace('/[^0-9a-z]/i','',$subaction)));
		
		if($subaction == 'confirm')
		{
			if($_POST['type'] == 1)
			{
				$pack = $ShopHandler->GetEntry((int)$_POST['pack_id']);
				if(count($pack) > 0)
				{
					$account = GetAccountExtraInfo($_SESSION['aid']);
					if(isset($account['vip']) && $account['vip'] > 0)
						$price = percent($pack['price'],$config['vip']*$account['vip']);
					else
						$price = $pack['price'];
					if(($account['point']-$price) >= 0)
					{
						if(account_character_display((int)$_POST['character']) == true)
						{
							$query = doQuery(' SELECT * FROM '.TABLE_CHARACTER.' WHERE cha_id = '.$_POST['character'].' ',DATABASE_GAME);
							$row = mssql_fetch_array($query);
							if($row['mem_addr'] != 0)
							{
								$oSmarty->assign('message',			array( 'text'		=> 'Your Character is Online!',
														   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
							}
							else
							{
								$query = doQuery(' SELECT * FROM Resource WHERE cha_id = '.$_POST['character'].' AND type_id = 3 ',DATABASE_GAME);
								$row = mssql_fetch_array($query);
								$inventory = loadEncodedInventory(trim($row['content']),CRYPT_KEY);
								
								$itemsToAdd = array();
								
								foreach($pack['itemid'] as $item)
								{
									$amount = $item['amount'];
									$item = $iteminfo->GetItemInfo($item['itemid']);
									$itemsToAdd[] = array($item['id'],$amount,$item['durability'][0],$item['durability'][1],$item['energy'][0],$item['energy'][1],0,0,0,0);
								}
								
								//Lets check if user character got a free slot	
								if (!addItemsToInventory($inventory, $itemsToAdd))
								{
									$oSmarty->assign('message',			array( 'text'		=> 'Your Inventory is Full!',
																   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
								} 
								else
								{
									$finalInventory = getEncodedInventory($inventory,CRYPT_KEY);
									$query = doQuery (' UPDATE resource SET content = \''.$finalInventory.'\' WHERE cha_id = '.$_POST['character'].' AND type_id = 3 ', DATABASE_GAME);
									if(!$query)
									{
										$oSmarty->assign('message',			array( 'text'		=> 'Failed to Assign Items!',
																	   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
									}
									else
									{
										SetAccountExtraInfo($_SESSION['aid'],0,-$price);
										$oSmarty->assign('message',			array( 'text'		=> 'Successful Assigned <b>'.$pack['name'].'</b>!',
																	   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
									}
								}
								
							}
						}
						else
						{
							$oSmarty->assign('message',			array( 'text'		=> 'Invalid Character!',
														   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
						}
					}
					else
					{
							$oSmarty->assign('message',			array( 'text'		=> 'Insufficient points.',
														   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
					}
				}
				else
				{
					$oSmarty->assign('message',			array( 'text'		=> 'Invalid Package!',
													   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
				}
			}
			else
			{
				$pack = $ShopHandler->GetEntry((int)$_POST['pack_id']);
				if(count($pack) > 0)
				{
					$account = GetAccountExtraInfo($_SESSION['aid']);
					//if($account['vip'] > 0)
					//	$price = percent($pack['price'],$config['vip']);
					//else
						$price = $pack['price'];
					if(($account['credit']-$price) >= 0)
					{
						if(account_character_display((int)$_POST['character']) == true)
						{
							$query = doQuery(' SELECT * FROM '.TABLE_CHARACTER.' WHERE cha_id = '.$_POST['character'].' ',DATABASE_GAME);
							$row = mssql_fetch_array($query);
							if($row['mem_addr'] != 0)
							{
								$oSmarty->assign('message',			array( 'text'		=> 'Your Character is Online!',
														   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
							}
							else
							{
								$query = doQuery(' SELECT * FROM Resource WHERE cha_id = '.$_POST['character'].' AND type_id = 3 ',DATABASE_GAME);
								$row = mssql_fetch_array($query);
								$inventory = loadEncodedInventory(trim($row['content']),CRYPT_KEY);
								
								$itemsToAdd = array();
								
								foreach($pack['itemid'] as $item)
								{
									$amount = $item['amount'];
									$item = $iteminfo->GetItemInfo($item['itemid']);
									$itemsToAdd[] = array($item['id'],$amount,$item['durability'][0],$item['durability'][1],$item['energy'][0],$item['energy'][1],0,0,0,0);
								}
								
								//Lets check if user character got a free slot	
								if (!addItemsToInventory($inventory, $itemsToAdd))
								{
									$oSmarty->assign('message',			array( 'text'		=> 'Your Inventory is Full!',
																   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
								} 
								else
								{
									$finalInventory = getEncodedInventory($inventory,CRYPT_KEY);
									//$query2 = doQuery ('UPDATE character SET credit = credit - '.(int)$pack['price'].' WHERE cha_id = '.(int)$_POST['character'], DATABASE_GAME);
									$query = doQuery (' UPDATE resource SET content = \''.$finalInventory.'\' WHERE cha_id = '.$_POST['character'].' AND type_id = 3 ', DATABASE_GAME);
									if(!$query)
									{
										$oSmarty->assign('message',			array( 'text'		=> 'Failed to Assign Items!',
																	   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
									}
									else
									{
										SetAccountExtraInfo($_SESSION['aid'],-$pack['price'],0);
										$oSmarty->assign('message',			array( 'text'		=> 'Successful Assigned <b>'.$pack['name'].'</b>!',
																	   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
									}
								}
								
							}
						}
						else
						{
							$oSmarty->assign('message',			array( 'text'		=> 'Invalid Character!',
														   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
						}
					}
					else
					{
							$oSmarty->assign('message',			array( 'text'		=> 'Insufficient Reputation.',
														   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
					}
				}
				else
				{
					$oSmarty->assign('message',			array( 'text'		=> 'Invalid Package!',
													   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
				}
			}
		}
		else
		{
			if ((isset($_GET['id'])) || (isset($_POST['id'])))
				$id		= ((isset($_POST['id'])) ? (int)$_POST['id'] : (int)$_GET['id']);
				
			if(isset($id) && $id > 0)
			{
				if (account_characters())
				{
					$pack = $ShopHandler->GetEntry($id);
					if(count($pack) > 0)
						$oSmarty->assign('pack',			 $pack );
					else
					{
						$oSmarty->assign('message',			array( 'text'		=> 'Invalid Package!',
													   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
					}
				
				}
				else
				{
					$oSmarty->assign('message',			array( 'text'		=> 'Database error while reading characters!',
												   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
				}
			}
			else
			{
				$oSmarty->assign('message',			array( 'text'		=> 'Invalid Package!',
											   'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
			}
		}
	}
	else
	{

		if (!isLoggedIn())
		{
			$oSmarty->assign('message',			array( 'text'		=> 'Please login first!',
									       'buttons'	=> '<input type="button" value="Login" onclick="javascript:if (typeof(ShowLoginZone)==&quot;function&quot;){ShowLoginZone(&quot;&quot;);}else{document.location.href=&quot;'.site_url('login').'&quot;}Purchase.hide();">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="Back" onclick="Purchase.hide();">' ) );
		}
		elseif (!checkReferer())
		{
			$oSmarty->assign('message',			array( 'text'		=> 'Invalid referer.',
									       'buttns'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
		}
		elseif (isBanned())
		{
			$oSmarty->assign('message',			array( 'text'		=> 'Your account has been banned.',
									       'buttons'	=> '<input type="button" value="Back" onclick="Purchase.hide();">' ) );
		}

	}
	// Display page

	$oSmarty->display('file:pages/shop/site_purchase.tpl');

?>