<?php

	// ===================================================================================================
	// Package      : pkoSite 
	// File         : class.flat.mall.php
	// Version      : 1.0.0
	// Author       : Mall
	// ===================================================================================================
	// History:
	//
	// v0.0.2       : first release
	// ===================================================================================================
	// Disclaimer   : To make it short - if you steal code you're a pathetic, little loser :-)
	// ===================================================================================================
	
	// Prevent people from calling this file directly! Normally it doesn't matter but its always better
	// being save than being sorry.

	if (!defined('PKOSITE'))
		die('Go away!');

	// ===================================================================================================
	// = Define constants
	// ===================================================================================================

	define('FAKE_LINE_BREAK',		'°^°');
	define('FAKE_TAB',			'°|°');
	
	define('COLUMN_ITEMS_UNIQUE_ID',	0);
	define('COLUMN_ITEMS_CATEGORY_ID',	1);
	define('COLUMN_ITEMS_NAME',		2);
	define('COLUMN_ITEMS_ICON',		3);
	define('COLUMN_ITEMS_DESCRIPTION',	4);
	define('COLUMN_ITEMS_ID',		5);
	define('COLUMN_ITEMS_PRICE',		6);
	define('COLUMN_ITEMS_TYPE',		7);

	define('COLUMN_CATEGORY_CATEGORY_ID',	0);
	define('COLUMN_CATEGORY_CATEGORY',	1);

	// ===================================================================================================

	class FlatFileMallHandler
	{
	
		public function __construct($path)
		{
			$this->db		= new Flatfile();
			$this->db->datadir	= $path;
		}		

		// ===========================================================================================
		// = All functions related to categories
		// ===========================================================================================

		public function getCategories($mode='ext')
		{

			$categories	= array();

			$rows		= $this->db->selectWhere(TABLE_ITEM_CATEGORIES_FF, NULL, -1, new OrderBy(COLUMN_CATEGORY_CATEGORY, ASCENDING, STRING_COMPARISON));			

			foreach ($rows as $category)
			{
				if ($mode=='ext')
				{
					$categories[]						= array( 'category_id'	=> $category[COLUMN_CATEGORY_CATEGORY_ID],
													 'category'	=> $category[COLUMN_CATEGORY_CATEGORY]	);
				}
				else
				{
					$categories[$category[COLUMN_CATEGORY_CATEGORY_ID]]	= $category[COLUMN_CATEGORY_CATEGORY];
				}
			}

			return $categories;

		}

		public function getCategory($id)
		{
		
			$entry		= $this->db->selectUnique(TABLE_ITEM_CATEGORIES_FF, COLUMN_CATEGORY_CATEGORY_ID, (int)$id);

			if (count($entry)>0)
			{
	        		$category		= array( 'category_id'		=> $entry[COLUMN_CATEGORY_CATEGORY_ID],
	        						 'category'		=> $entry[COLUMN_CATEGORY_CATEGORY]	);
	                
				return $category;
			}
			else
			{
				$this->error	= 'Record not found.';
				return false;
			}

		}

		public function createCategory($category)
		{

			$data	= array( COLUMN_CATEGORY_CATEGORY	=> $category	);
					 
			$newId	= $this->db->insertWithAutoId(TABLE_ITEM_CATEGORIES_FF, COLUMN_CATEGORY_CATEGORY_ID, $data);

			return ($newId > 0);

		}

		public function updateCategory($id,$category)
		{

			$data	= array( COLUMN_CATEGORY_CATEGORY	=> $category	);
			
			$this->db->updateSetWhere(TABLE_ITEM_CATEGORIES_FF, $data, new SimpleWhereClause(COLUMN_CATEGORY_CATEGORY_ID, '=', $id, INTEGER_COMPARISON));

			return true;

		}
		
		public function deleteCategory($id)
		{
			$this->db->deleteWhere(TABLE_ITEM_CATEGORIES_FF, new SimpleWhereClause(COLUMN_CATEGORY_CATEGORY_ID, '=', $id, INTEGER_COMPARISON));

			return true;

		}

		// ===========================================================================================
		// = All functions related to files
		// ===========================================================================================

		public function getCategoryItems($cid=-1)
		{

			$ITEMS	= array();
			$type	= trim((isset($_GET['type']) ? $_GET['type'] : 1));

			// First we must read all categories as Flatfile can't JOIN :-(

			$categories	= $this->getCategories('internal');
			
			// Load ITEMS

			if ($cid >= 0)
			{
					$compClause = new AndWhereClause(
								new SimpleWhereClause(COLUMN_ITEMS_CATEGORY_ID, '=', (int)$cid),
								new SimpleWhereClause(COLUMN_ITEMS_TYPE, '=', (int)$type, INTEGER_COMPARISON));
						
					$rows	= $this->db->selectWhere(TABLE_ITEMS_FF, $compClause,-1,
							   new OrderBy(COLUMN_ITEMS_PRICE, ASCENDING, STRING_COMPARISON));
			}
			else
				$rows	= $this->db->selectWhere(TABLE_ITEMS_FF, 
							   NULL, 
							   -1, 
							   new OrderBy(COLUMN_ITEMS_NAME, ASCENDING, STRING_COMPARISON));

			// Create Result-Array
			                
                	foreach ($rows as $entry)
                	{

                		$ITEMS[]	= array( 'unique_id'	=> $entry[COLUMN_ITEMS_UNIQUE_ID],
                					 'category_id'	=> $entry[COLUMN_ITEMS_CATEGORY_ID],
                					 'name'		=> $entry[COLUMN_ITEMS_NAME],
                					 'icon'		=> $entry[COLUMN_ITEMS_ICON],
                					 'description'	=> $this->removeFakeFormats($entry[COLUMN_ITEMS_DESCRIPTION]),
                					 'id'		=> $entry[COLUMN_ITEMS_ID],
	                				 'category'	=> (isset($categories[$entry[COLUMN_ITEMS_CATEGORY_ID]]) ? $categories[$entry[COLUMN_ITEMS_CATEGORY_ID]] : 'Unknown'),
                					 'price'	=> $entry[COLUMN_ITEMS_PRICE],
									 'type'		=> $entry[COLUMN_ITEMS_TYPE]);
                		
                	}
                
			return $ITEMS;

		}
		
		public function getItem($id)
		{

			// First we must read all categories as Flatfile can't JOIN :-(

			$categories	= $this->getCategories('internal');

			// Load Download-Entry
		
			$entry		= $this->db->selectUnique(TABLE_ITEMS_FF, COLUMN_ITEMS_UNIQUE_ID, (int)$id);

			if (count($entry)>0)
			{

                		$download	= array( 'unique_id'	=> $entry[COLUMN_ITEMS_UNIQUE_ID],
                					 'category_id'	=> $entry[COLUMN_ITEMS_CATEGORY_ID],
                					 'name'		=> $entry[COLUMN_ITEMS_NAME],
                					 'icon'		=> $entry[COLUMN_ITEMS_ICON],
                					 'description'	=> $this->removeFakeFormats($entry[COLUMN_ITEMS_DESCRIPTION]),
                					 'id'		=> $entry[COLUMN_ITEMS_ID],
	                				 'category'	=> (isset($categories[COLUMN_ITEMS_CATEGORY_ID]) ? $categories[COLUMN_ITEMS_CATEGORY_ID] : 'Unknown'),
                					 'price'	=> $entry[COLUMN_ITEMS_PRICE],
									 'type'		=> $entry[COLUMN_ITEMS_TYPE]	);
	                
				return $download;

			}
			else
			{
				$this->error	= 'Record not found.';
				return false;
			}
			                
		}
		
		public function createItem($data)
		{

			$data	= array( COLUMN_ITEMS_CATEGORY_ID	=> (int)$data['category'],
					 COLUMN_ITEMS_NAME		=> $data['name'],
					 COLUMN_ITEMS_ICON		=> $data['icon'],
					 COLUMN_ITEMS_DESCRIPTION	=> $this->addFakeFormats($data['description']),
					 COLUMN_ITEMS_ID		=> $data['item_id'],
					 COLUMN_ITEMS_PRICE		=> $data['price'],
					 COLUMN_ITEMS_TYPE		=> $data['type'],	);
					 
			$newId	= $this->db->insertWithAutoId(TABLE_ITEMS_FF, COLUMN_ITEMS_UNIQUE_ID, $data);
			
			return ($newId != 0);

		}

		// Update an entry in the ITEMS-table
		
		public function updateItem($id,$data)
		{
			
			$data	= array( COLUMN_ITEMS_UNIQUE_ID	=> $id,
					 COLUMN_ITEMS_CATEGORY_ID	=> (int)$data['category'],
					 COLUMN_ITEMS_NAME		=> $data['name'],
					 COLUMN_ITEMS_ICON		=> $data['icon'],
					 COLUMN_ITEMS_DESCRIPTION	=> $this->addFakeFormats($data['description']),
					 COLUMN_ITEMS_ID		=> $data['item_id'],
					 COLUMN_ITEMS_PRICE		=> $data['price'],
					 COLUMN_ITEMS_TYPE		=> $data['type'],	);
					 
			$this->db->updateSetWhere(TABLE_ITEMS_FF, $data, new SimpleWhereClause(COLUMN_ITEMS_UNIQUE_ID, '=', $id, INTEGER_COMPARISON));

			return true;

		}

		// Delete an entry from the ITEMS-table
		
		public function deleteItem($id)
		{

			$this->db->deleteWhere(TABLE_ITEMS_FF, new SimpleWhereClause(COLUMN_ITEMS_UNIQUE_ID, '=', $id, INTEGER_COMPARISON));

			return true;

		}

		// ===========================================================================================
		// = Other functions
		// ===========================================================================================

		public function getLastError()
		{
			return $this->error;
		}

		// The following 2 functions are needed as the Flatfile-class removes linebreaks and tabs
		// from the data you add to it. 

		private function addFakeFormats($text)
		{
			$text		= str_replace("\n",FAKE_LINE_BREAK,$text);
			$text		= str_replace("\t",FAKE_TAB,$text);
			return $text;
		}

		private function removeFakeFormats($text)
		{
			$text		= str_replace(FAKE_LINE_BREAK,"\n",$text);
			$text		= str_replace(FAKE_TAB,"\t",$text);
			return $text;
		}

	}

?>