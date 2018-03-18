<?php

	// ===================================================================================================
	// Package      : pkoSite 
	// File         : class.mysql.mall.php
	// Version      : 1.0.0
	// Author       : Momo
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

	class MySQLMallHandler
	{

		private $error	= '';
	
		// ===========================================================================================
		// = Constructor, etc.
		// ===========================================================================================

		public function __construct($connection)
		{

			$this->db	= mysql_connect($connection['host'], $connection['user'], $connection['password']);

			if (!$this->db)
			{
				die('Could not connect to database: ' . mysql_error($this->db));
			}

			$db_selected	= mysql_select_db($connection['database'], $this->db);
			if (!$db_selected)
			{
				die ('Can\'t use database : ' . mysql_error($this->db));
			}			

		}		

		// ===========================================================================================
		// = All functions related to categories
		// ===========================================================================================

		public function getCategories()
		{

			$query		= @mysql_query('SELECT CATEGORY_ID, category FROM '.TABLE_ITEM_CATEGORIES.' ORDER BY category', $this->db);
	
			if ($query === false)
			{
				$this->error	= mysql_error($this->db);
				return false;
			}
			else
			{
				$result		= array();
				
				while ($row = mysql_fetch_assoc($query))
				{
					$result[]			= array_change_key_case($row,CASE_LOWER);
				}

				return $result;

			}

		}
		
		public function getCategory($id)
		{

			$query		= @mysql_query('SELECT * FROM '.TABLE_ITEM_CATEGORIES.' WHERE CATEGORY_ID = '.(int)$id, $this->db);

			if ($query === false)
			{
				$this->error	= mysql_error($this->db);
				return false;
			}
			else
			{
				$result		= array();
				
				if (mysql_num_rows($query) == 1)
				{
					$row		= mysql_fetch_assoc($query);
					$result		= array_change_key_case($row,CASE_LOWER);
				}
				else
				{
					$this->error	= 'Record not found.';
					return false;
				}

				return $result;

			}

		}

		public function createCategory($category)
		{

			$query		= @mysql_query('INSERT INTO '.TABLE_ITEM_CATEGORIES.' (category) VALUES (\''.mysql_real_escape_string($category).'\')', $this->db);
			
			if ($query === false)
				$this->error	= mysql_error($this->db);
	
			return $query;

		}

		public function updateCategory($id,$category)
		{

			$query		= @mysql_query('UPDATE '.TABLE_ITEM_CATEGORIES.' SET category = \''.mysql_real_escape_string($category).'\' WHERE CATEGORY_ID = '.(int)$id, $this->db);
			
			if ($query === false)
				$this->error	= mysql_error($this->db);
	
			return $query;

		}
		
		public function deleteCategory($id)
		{

			$query		= @mysql_query('DELETE FROM '.TABLE_ITEM_CATEGORIES.' WHERE CATEGORY_ID = '.(int)$id, $this->db);
			
			if ($query === false)
				$this->error	= mysql_error($this->db);
	
			return $query;

		}

		// ===========================================================================================
		// = All functions related to files
		// ===========================================================================================

		public function getCategoryItems($cid=-1)
		{

			if ($cid >= 0)
				$query		= @mysql_query('SELECT * FROM '.TABLE_ITEMS.' AS d LEFT JOIN '.TABLE_ITEM_CATEGORIES.' AS c ON (c.CATEGORY_ID = d.CATEGORY_ID) WHERE d.CATEGORY_ID = '.(int)$cid, $this->db);
			else
				$query		= @mysql_query('SELECT * FROM '.TABLE_ITEMS.' AS d LEFT JOIN '.TABLE_ITEM_CATEGORIES.' AS c ON (c.CATEGORY_ID = d.CATEGORY_ID)', $this->db);
	
			if ($query === false)
			{
				$this->error	= mysql_error($this->db);
				return false;
			}
			else
			{
				$result		= array();
				
				while ($row = mysql_fetch_assoc($query))
				{
					$result[]		= array_change_key_case($row,CASE_LOWER);
				}

				return $result;

			}

		}

		public function getItem($id)
		{

			$query		= @mysql_query('SELECT * FROM '.TABLE_ITEMS.' AS d LEFT JOIN '.TABLE_ITEM_CATEGORIES.' AS c ON (c.CATEGORY_ID = d.CATEGORY_ID) WHERE d.UNIQUE_ID = '.(int)$id, $this->db);
	
			if ($query === false)
			{
				$this->error	= mysql_error($this->db);
				return false;
			}
			else
			{
				
				if (mysql_num_rows($query) == 1)
				{
				
					$result		= array();
					
					while ($row = mysql_fetch_assoc($query))
					{
						$result		= array_change_key_case($row,CASE_LOWER);
					}
	
					return $result;

				}
				else
				{
					$this->error	= 'Record not found.';
					return false;
				}

			}

		}

		public function createItem($data)
		{

			$query		= @mysql_query('INSERT INTO '.TABLE_ITEMS.' (CATEGORY_ID, name, icon, description, item_id, price) VALUES ('.(int)$data['category'].', \''.mysql_real_escape_string($data['name']).'\', \''.mysql_real_escape_string($data['icon']).'\', \''.mysql_real_escape_string($data['description']).'\', '.(int)$data['item_id'].', '.(int)$data['price'].')', $this->db);
			
			if ($query === false)
				$this->error	= mysql_error($this->db);
	
			return $query;

		}

		public function updateItem($id,$data)
		{

			$query		= @mysql_query('UPDATE '.TABLE_ITEMS.' SET CATEGORY_ID = '.(int)$data['category'].', name = \''.mysql_real_escape_string($data['name']).'\', icon = \''.mysql_real_escape_string($data['icon']).'\', description = \''.mysql_real_escape_string($data['description']).'\', item_id = '.(int)$data['item_id'].', price = '.(int)$data['price'].' WHERE UNIQUE_ID = '.$id, $this->db);
			
			if ($query === false)
				$this->error	= mysql_error($this->db);
	
			return $query;

		}

		public function deleteItem($id)
		{

			$query		= @mysql_query('DELETE FROM '.TABLE_ITEMS.' WHERE UNIQUE_ID = '.(int)$id, $this->db);
			
			if ($query === false)
				$this->error	= mysql_error($this->db);
	
			return $query;

		}

		// ===========================================================================================
		// = Other functions
		// ===========================================================================================

		public function getLastError()
		{
			return $this->error;
		}

	}

?>