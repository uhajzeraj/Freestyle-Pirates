<?php
	
	if (!defined('PKOSITE'))
	{
			header("HTTP/1.0 404 Not Found");
			exit();
	}
	
	require_once('classes'.DIRECTORY_SEPARATOR.'class.iteminfo.php');					// ItemInfo Class
	
	class ShopHandler
	{
		protected $files = array();
		public $last_id = 1;
		
		public $cat		= array();
		public $tcat	= array();
		
		public function __construct($dir)
		{
			if ($handle = opendir($dir))
			{
				while (false !== ($file = readdir($handle))) {
					if ($file != "." && $file != ".." && $file != ".htaccess" && $file != "index.php") {
						
						$this->files[] =	array(	'name'	=>	$file,
													'path'	=>	$dir);
						$lastfile = unserialize(file_get_contents($dir.$file));
						if($this->last_id < $lastfile['id'])
							$this->last_id = $lastfile['id'];
					}
				}
				closedir($handle);
			}
			
		}
		
		public function GetEntries($cid=null,$order='DESC')
		{
			$entry = array();
			$entries = array();
			
			foreach($this->files as $files)
			{
				$items = unserialize(file_get_contents($files['path'].$files['name']));
					
				foreach($items['itemid'] as $item)
				{
					$iteminfo = array( 'info' => ItemInfo::GetItemInfo($item['itemid']),
									   'amount' => $item['amount'],
									  );
					$items['items'][] = $iteminfo;
				}
				$entry[] = $items;
			}

			if(isset($cid) && $cid > 0)
			{
				foreach($entry as $entry)
				{
					if($entry['cid'] == $cid)
						$entries[] = $entry;
				}
				sort($entries);
				return $entries;
			}
			
			return $entry;
		}
		
		public function GetEntry($id)
		{
			$entry = array();
			
			foreach($this->files as $files)
			{
				if($files['name'] == $id) 
				{
					$entry		= unserialize(file_get_contents($files['path'].$files['name']));
					$entry['items'][] = ItemInfo::GetItemInfo($entry['itemid']);
				}
			}
			return $entry;
		}
		
		public function GetCategories()
		{
			$cats = unserialize(file_get_contents('./data/shop/categories.dat'));
			$categories = array();
			foreach($cats as $cat)
			{
				$categories[] = $cat;
			}
			
			return $categories;
			
		}
	}
	
?>