<?php

	// ===================================================================================================
	// Package      : pkoSite
	// File         : inc.admin.php
	// Version      : 1.0.0
	// Author       : SnowCrash
	// ===================================================================================================
	// History:
	//
	// v1.0.0       : release of the FINAL version ;o)
	// v0.0.3       : moved all functions to seperate files, fixed tons of bugs
	// v0.0.2       : added news-category
	// v0.0.1       : first release
	// ===================================================================================================
	// Disclaimer   : To make it short - if you steal code you're a pathetic, little loser :-)
	// ===================================================================================================

	// Prevent people from calling this file directly! Normally it doesn't matter but its always better
	// being save than being sorry.

	if (!defined('PKOSITE'))
		die('Go away!');

	// ===================================================================================================

	require_once(BASEDIR.'classes'.DIRECTORY_SEPARATOR.'class.news.php');			// News-class, we'll need it here ;o)
	require_once(BASEDIR.'classes'.DIRECTORY_SEPARATOR.'class.downloads.php');		// Downloads-class, we'll need it here ;o)
	require_once(BASEDIR.'classes'.DIRECTORY_SEPARATOR.'class.shop.php');		// Shop-class, we'll need it here ;o)

	// ===================================================================================================

	// I moved most of the function to some seperate files as the code is easier to maintain that way.
	// I don't like huge files ;o)

	require_once(BASEDIR.'pages'.DIRECTORY_SEPARATOR.'admin'.DIRECTORY_SEPARATOR.'inc.admin.news.php');
	require_once(BASEDIR.'pages'.DIRECTORY_SEPARATOR.'admin'.DIRECTORY_SEPARATOR.'inc.admin.downloads.php');
	require_once(BASEDIR.'pages'.DIRECTORY_SEPARATOR.'admin'.DIRECTORY_SEPARATOR.'inc.admin.misc.php');

	// ===================================================================================================

	$templatefile		= 'site_admin.tpl';

	// Build Breadcrumb-Navigation

	$breadcrumbs	= array();

	$breadcrumbs[]	= array( 'caption'	=> 'Home',
				 'url'		=> $config['script_url']			);

	// Check if the user is allowed to access this page

	if (isLoggedIn() && checkReferer() && isAdmin() && !isBanned())
	{

		// Get URL-params

		if ((!isset($_GET['sact'])) && (!isset($_POST['sact'])))
			$subaction		= 'dashboard';
		else
			$subaction		= ((isset($_POST['sact'])) ? $_POST['sact'] : $_GET['sact']);

		$subaction		= strtolower(trim(preg_replace('/[^0-9a-z]/i','',$subaction)));

		$id			= 0;

		if ((isset($_GET['id'])) || (isset($_POST['id'])))
			$id		= ((isset($_POST['id'])) ? (int)$_POST['id'] : (int)$_GET['id']);

		// Handle subaction

		switch ($subaction)
		{
			// --- Shop ---------------------------------------------------------------------
			
			case 'shop' :
				$templatefile	= 'site_admin_shop.tpl';
				
				if(isset($id))
				{
					if(!isset($_GET['action']))
					{
						if(isset($_GET['type']) && $_GET['type'] == 1)
							$ShopHandler = new ShopHandler(MALL_DIR);
						else
							$ShopHandler = new ShopHandler(AWARD_DIR);
							
						$oSmarty->assign('package',			$ShopHandler->GetEntries());
					}
					else
					{
						switch($_GET['action'])
						{
							case 'delete' :
								if($_GET['type'] == 1)
									unlink(MALL_DIR.$id.'.dat');

								if($_GET['type'] == 2)
									unlink(AWARD_DIR.$id.'.dat');
									
								header('Location: '.site_url('admin',array('sact' => 'shop', 'type' => $_GET['type'])));
									
								break;
							case 'add' :
								
								$oSmarty->assign('categories',			ShopHandler::GetCategories());
								if(isset($_POST['add']))
								{
								
									if($_POST['pack_type'] == 1)
									{
										$ShopHandler = new ShopHandler(MALL_DIR);
										$entries = $ShopHandler->GetEntries();
										$newid = $ShopHandler->last_id+1;
										
										$itemid = array();
										$items = explode(',',$_POST['pack_items']);
										foreach($items as $items)
										{
											$exploded = explode(':',$items);
											$itemid[] = array( 'amount' => $exploded[0],
																'itemid' => $exploded[1],
															 );
										}
										// Mall Item
										$item = array(	'id'		=>	$newid,
														'cid'		=>	$_POST['pack_cat'],
														'name'		=>  $_POST['pack_name'],
														'itemid'	=>	$itemid,
														'price'		=>  $_POST['pack_price'],
														'description' => $_POST['pack_desc'],
														'type'		=> $_POST['pack_type'],
														'vip'       => $_POST['pack_vip'],
													 );
												
										@file_put_contents(BASEDIR.'data'.DIRECTORY_SEPARATOR.'shop'.DIRECTORY_SEPARATOR.'mall'.DIRECTORY_SEPARATOR.$newid.'.dat',serialize($item));
										
										header('Location: '.site_url('admin',array('sact' => 'shop', 'type' =>$_POST['pack_type'] )));
									}
									if($_POST['pack_type'] == 2)
									{
										$ShopHandler = new ShopHandler(AWARD_DIR);
										$newid = $ShopHandler->last_id+1;
										$itemid = array();
										$items = explode(',',$_POST['pack_items']);
										foreach($items as $items)
										{
											$exploded = explode(':',$items);
											$itemid[] = array( 'amount' => $exploded[0],
																'itemid' => $exploded[1],
															 );
										}
										// Mall Item
										$item = array(	'id'		=>	$newid,
														'cid'		=>	$_POST['pack_cat'],
														'name'		=>  $_POST['pack_name'],
														'itemid'	=>	$itemid,
														'price'		=>  $_POST['pack_price'],
														'description' => $_POST['pack_desc'],
														'type'		=> $_POST['pack_type'],
													 );
												
										@file_put_contents(BASEDIR.'data'.DIRECTORY_SEPARATOR.'shop'.DIRECTORY_SEPARATOR.'award'.DIRECTORY_SEPARATOR.$newid.'.dat',serialize($item));
										
										header('Location: '.site_url('admin',array('sact' => 'shop', 'type' =>$_POST['pack_type'] )));
									}
								}
							
								$templatefile	= 'site_admin_shopadd.tpl';
								break;
						}
					}
				}
				
				$breadcrumbs[]	= array( 'caption'	=> 'Shop Panel',
										 'url'		=> ''	);
			
				break;
				
			case 'account'	:
				
				if(isset($_POST['keyword']))
				{
					$oSmarty->assign('keyword',			$_POST['keyword']);
					$templatefile	= 'site_admin_account.tpl';
					
					if(isset($_POST['submit']))
					{
						$point = $_POST['pts'];
						$credit = $_POST['cts'];
						
						if(isset($_POST['ban']))
							doQuery('UPDATE '.TABLE_ACCOUNT_LOGIN.' SET ban = 1 WHERE id = '.$id.' ',DATABASE_ACCOUNT);
						else
							doQuery('UPDATE '.TABLE_ACCOUNT_LOGIN.' SET ban = 0 WHERE id = '.$id.' ',DATABASE_ACCOUNT);
							
						updatePassword('id',$id,$_POST['password']);
						
						SetAccountExtraInfo($id,$credit,$point,$_POST['vip']);
					}
					
					
					admin_account($_POST['keyword']);
					
					$breadcrumbs[]	= array( 'caption'	=> 'Manage Account',
								 'url'		=> ''				);
				}

				break;
				
			// --- Downloads ---------------------------------------------------------------------

			case 'downloads'	:

				$templatefile	= 'site_admin_downloads.tpl';

				admin_downloads_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Downloads',
							 'url'		=> ''				);

				break;

			case 'downloadedit'	:

				$templatefile	= 'site_admin_downloads_edit.tpl';

				admin_downloads_edit($id);

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Downloads',
							 'url'		=> site_url( 'admin', array( 'sact' => 'downloads' ) ) );

				$breadcrumbs[]	= array( 'caption'	=> 'Edit Download',
							 'url'		=> ''				);

				break;

			case 'downloadadd'	:

				$templatefile	= 'site_admin_downloads_add.tpl';

				admin_downloads_add();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Downloads',
							 'url'		=> site_url( 'admin', array( 'sact' => 'downloads' ) ) );

				$breadcrumbs[]	= array( 'caption'	=> 'Add Download',
							 'url'		=> ''				);

				break;

			case 'downloaddelete'	:

				$templatefile	= 'site_admin_downloads.tpl';

				admin_downloads_delete($id);

				admin_downloads_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage News',
							 'url'		=> ''				);

				break;

			// --- Download-Categories -----------------------------------------------------------

			case 'dlcategories'	:

				$templatefile	= 'site_admin_categories.tpl';

				admin_categories_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Download-Categories',
							 'url'		=> ''				);

				break;

			case 'categoryedit'	:

				$templatefile	= 'site_admin_categories_edit.tpl';

				admin_category_edit($id);

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Download-Categories',
							 'url'		=> site_url( 'admin', array( 'sact' => 'dlcategories' ) ) );

				$breadcrumbs[]	= array( 'caption'	=> 'Edit Download-Category',
							 'url'		=> ''				);

				break;

			case 'categoryadd'	:

				$templatefile	= 'site_admin_categories_add.tpl';

				admin_category_add();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Download-Categories',
							 'url'		=> site_url( 'admin', array( 'sact' => 'dlcategories' ) ) );

				$breadcrumbs[]	= array( 'caption'	=> 'Add Download-Category',
							 'url'		=> ''				);

				break;

			case 'categorydelete'	:

				$templatefile	= 'site_admin_categories.tpl';

				admin_category_delete($id);

				admin_categories_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Download-Categories',
							 'url'		=> ''				);

				break;

			// --- News --------------------------------------------------------------------------

			case 'news'		:

				$templatefile	= 'site_admin_news.tpl';

				admin_news_display_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage News',
							 'url'		=> ''				);

				break;

			case 'newsedit'		:

				$templatefile	= 'site_admin_news_edit.tpl';

				admin_news_edit($id);

				$breadcrumbs[]	= array( 'caption'	=> 'Manage News',
							 'url'		=> site_url('admin', array('sact'=>'news'))				);

				$breadcrumbs[]	= array( 'caption'	=> 'Edit News',
							 'url'		=> ''				);

				break;

			case 'newsadd'		:

				$templatefile	= 'site_admin_news_add.tpl';

				admin_news_add();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage News',
							 'url'		=> site_url('admin', array('sact'=>'news'))				);

				$breadcrumbs[]	= array( 'caption'	=> 'Add News',
							 'url'		=> ''				);

				break;

			case 'newsdelete'		:

				$templatefile	= 'site_admin_news.tpl';

				admin_news_delete_entry($id);

				admin_news_display_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage News',
							 'url'		=> ''				);

				break;

			// --- Authors -----------------------------------------------------------------------

			case 'authors'	:

				$templatefile	= 'site_admin_authors.tpl';

				admin_authors_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Authors',
							 'url'		=> ''				);

				break;

			case 'authoredit'	:

				$templatefile	= 'site_admin_authors_edit.tpl';

				admin_author_edit($id);

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Authors',
							 'url'		=> site_url( 'admin', array( 'sact' => 'authors' ) ) );

				$breadcrumbs[]	= array( 'caption'	=> 'Edit Author',
							 'url'		=> ''				);

				break;

			case 'authoradd'	:

				$templatefile	= 'site_admin_authors_add.tpl';

				admin_author_add();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Authors',
							 'url'		=> site_url( 'admin', array( 'sact' => 'authors' ) ) );

				$breadcrumbs[]	= array( 'caption'	=> 'Add Author',
							 'url'		=> ''				);

				break;

			case 'authordelete'	:

				$templatefile	= 'site_admin_authors.tpl';

				admin_author_delete($id);

				admin_authors_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Download-Categories',
							 'url'		=> ''				);

				break;

			// --- News-Categories ---------------------------------------------------------------

			case 'ncategories'	:

				$templatefile	= 'site_admin_ncategories.tpl';

				admin_ncategories_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage News-Categories',
							 'url'		=> ''				);

				break;

			case 'ncategoryedit'	:

				$templatefile	= 'site_admin_ncategories_edit.tpl';

				admin_ncategory_edit($id);

				$breadcrumbs[]	= array( 'caption'	=> 'Manage News-Categories',
							 'url'		=> site_url( 'admin', array( 'sact' => 'ncategories' ) ) );

				$breadcrumbs[]	= array( 'caption'	=> 'Edit News-Category',
							 'url'		=> ''				);

				break;

			case 'ncategoryadd'	:

				$templatefile	= 'site_admin_ncategories_add.tpl';

				admin_ncategory_add();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage News-Categories',
							 'url'		=> site_url( 'admin', array( 'sact' => 'ncategories' ) ) );

				$breadcrumbs[]	= array( 'caption'	=> 'Add News-Category',
							 'url'		=> ''				);

				break;

			case 'ncategorydelete'	:

				$templatefile	= 'site_admin_ncategories.tpl';

				admin_ncategory_delete($id);

				admin_ncategories_list();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage News-Categories',
							 'url'		=> ''				);

				break;

			// --- Others ------------------------------------------------------------------------

			case 'rules'		:

				admin_rules();

				$breadcrumbs[]	= array( 'caption'	=> 'Manage Rules',
							 'url'		=> ''				);

				break;

			case 'dashboard'	:
			default			:

				$breadcrumbs[]	= array( 'caption'	=> 'Admin-Dashboard',
							 'url'		=> ''				);

				admin_dashboard();

				break;

		}

	}
	else
	{

		if (!isLoggedIn())
		{
			$oSmarty->assign('message',			array( 'type'		=> 'error',
									       'messages'	=> array( 'You are not logged in.',
									       				  'Please <a href="'.site_url('login').'">login</a>.' ) ) );
		}
		elseif (!isAdmin())
		{
			$oSmarty->assign('message',			array( 'type'		=> 'error',
									       'messages'	=> array( 'You don\'t have permission to enter this page.' ) ) );
		}
		elseif (!checkReferer())
		{
			$oSmarty->assign('message',			array( 'type'		=> 'error',
									       'messages'	=> array( 'Invalid referer.' ) ) );
		}
		elseif (isBanned())
		{
			$oSmarty->assign('message',			array( 'type'		=> 'error',
									       'messages'	=> array( 'Your account has been banned.' ) ) );
		}

	}
	
	// Assign Breadcrumbs

  	$oSmarty->assign('breadcrumbs',		$breadcrumbs);

	// Display Template

  	if (!$error)
		$oSmarty->display('file:pages/admin/'.$templatefile);

?>