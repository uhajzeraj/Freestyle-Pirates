<?php
	if (!defined('PKOSITE'))
	{
			header("HTTP/1.0 404 Not Found");
			exit();
	}
	
	//Important constants
	define('ID',		0);
	define('NAME',		1);
	define('ICON',		2);
	define('ENERGY',	75);
	define('DUR',		76);
	define('DESC',		93);
	
	define('FILE',		BASEDIR.'/data/ItemInfo.txt');
	define('CACHE',		BASEDIR.'/data/items/');
	

	// can be useful somewhen xD
	function AddZero(&$id)
	{
		if($id < 10)
			$id = '000'.$id;
		if($id < 100 && $id > 10)
			$id = '00'.$id;
		if($id < 1000 && $id > 100)
			$id = '0'.$id;
	}

	class ItemInfo
	{
		protected $hash;		// md5 hash
		
		protected $files = array();
		
		public function __construct() // for later usage
		{
			$cache = false;
			
			if (file_exists(CACHE.'hash.dat') && is_readable(CACHE.'hash.dat'))
				$this->hash = file_get_contents(CACHE.'hash.dat', FILE_USE_INCLUDE_PATH);
			
			//print_r($this->hash);
			
			while($cache == false)
			{
				if((isset($this->hash)) && (md5_file(FILE) == $this->hash))
					$cache == true;
				
				// Get Cached Files
				if ($handle = opendir(CACHE))
				{
					while (false !== ($file = readdir($handle)))
					{
						if ($file != '.' && $file != '..' && $file != '.htaccess' && $file != 'hash.dat')
						{
							
							$this->files[] =	array(	'id'	=>	$file);
						}
					}
					closedir($handle);
					
					if(count($this->files) > 1) 
						$cache = true;
				}
				
				if($cache == false)
				{
					
					// Lets Cache the ItemInfo
					if (file_exists(FILE) && is_readable(FILE))
					{
						// to don't break the flow xD
						$data = file(FILE);
						$row = array();
						$i = 0;
						foreach ($data as $line)
						{
							if (trim($line) != "") {
							
								$fields			= explode("\t", $line);
								$row[$i]		= $fields;
							}
							$i++;
						}
						
						unset($fields);
						unset($data);
						unset($line);
						
						for($i = 0; $i < count($row); $i++)
						{
							// I should make a Check for every column used
							if(isset($row[$i]) && isset($row[$i][ID]) && ctype_digit($row[$i][ID]))
							{
								$item	= array('id'			=> $row[$i][ID],
												'name'			=> $row[$i][NAME],
												'icon'			=> $row[$i][ICON],
												'energy'		=> explode(',',$row[$i][ENERGY]),
												'durability'	=> explode(',',$row[$i][DUR]),
												'description'	=> $row[$i][DESC]
												);
							}
							// Create Cache
							if(isset($item))
								@file_put_contents(CACHE.$item['id'].'.dat',serialize($item));
						}
						
						// Create the md5 hash
						@file_put_contents(CACHE.'hash.dat',md5_file(FILE));
					}
					else
						die("File: <b>".FILE."</b> couldn't be found!");
				}
			}
		}
		
		/*
		*	Function to get the Items Information
		*	param: $id, integer
		*	return: single dimensional array
		*/
		
		public function GetItemInfo($id)
		{
			$item = array();
			
			AddZero($id);
			
			if (file_exists(CACHE.$id.'.dat'))
			{
				$item	= unserialize(file_get_contents(CACHE.$id.'.dat'));
			}
			
			return $item;
		}
		
		/*
		*	Function to get all cached Items
		*	start & end are for getting items in a defined range
		*	param: $start, integer; $end, integer
		*	return: multi dimensional array
		*/
		
		public function GetItems($start=null,$end=null)
		{
			$items = array();
			foreach($this->files as $file)
			{
				if($start != null && $end != null ) 
				{
					if((int)$file['id'] >= (int)$start && (int)$file['id'] <= (int)$end)
					{
						if (file_exists(CACHE.$file['id']))
						{
							$items[]	= unserialize(file_get_contents(CACHE.$file['id']));
						}
					}
				}
				else
				{
					if (file_exists(CACHE.$file['id']))
					{
						$items[]	= unserialize(file_get_contents(CACHE.$file['id']));
					}
				}
			}
			
			return $items;
		}
		
	}
?>