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

	// Load ItemInfo
	$iteminfo		= new ItemInfo();
	
	// Build breadcrumb-navigation

	$breadcrumbs	= array();

	$breadcrumbs[]	= array( 'caption'	=> 'Home',
				 'url'		=> site_url('index')	);
				 
	$breadcrumbs[]	= array( 'caption'	=> 'Shop',
				 'url'		=> ''	);

				 
	if ((!isset($_GET['sact'])) && (!isset($_POST['sact'])))
		$subaction		= 'mall';
	else
		$subaction		= ((isset($_POST['sact'])) ? $_POST['sact'] : $_GET['sact']);

	$subaction		= strtolower(trim(preg_replace('/[^0-9a-z]/i','',$subaction)));

	$id			= 1;

	if ((isset($_GET['id'])) || (isset($_POST['id'])))
		$id		= ((isset($_POST['id'])) ? (int)$_POST['id'] : (int)$_GET['id']);

		switch ($subaction)
		{

			// --- Item Mall ---------------------------------------------------------------------

			case 'mall'	:
			default			:
				$ShopHandler = new ShopHandler(MALL_DIR);
				
				$oSmarty->assign('package',		$ShopHandler->GetEntries($id,'ASC'));
				$oSmarty->assign('categories',		$ShopHandler->GetCategories(1));
				
				$template = 'mall_list';		// File to Display
				
				$breadcrumbs[]	= array( 'caption'	=> 'Item Mall',
										 'url'		=> ''	);
			
				break;
			
			// --- Award Cener -------------------------------------------------------------------
			
			case 'award' :
				$ShopHandler = new ShopHandler(AWARD_DIR);
				
				$oSmarty->assign('package',		$ShopHandler->GetEntries($id,'ASC'));
				$oSmarty->assign('categories',		$ShopHandler->GetCategories(2));
				
				$template = 'award_list';		// File to Display
				
				$breadcrumbs[]	= array( 'caption'	=> 'Award Center',
										 'url'		=> ''	);
			
				break;
				
			case 'display'		:
				$ShopHandler = new ShopHandler(MALL_DIR);
				
				$template = 'shop';		// File to Display

				break;
				
		}
		

	$oSmarty->assign('id',		$id);
	$oSmarty->assign('breadcrumbs',		$breadcrumbs);

	// Display page

	$oSmarty->display('file:pages/shop/site_'.$template.'.tpl');

?>