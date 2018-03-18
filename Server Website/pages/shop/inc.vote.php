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
	
	// Build breadcrumb-navigation

	$breadcrumbs	= array();

	$breadcrumbs[]	= array( 'caption'	=> 'Home',
				 'url'		=> site_url('index')	);
				 
	$breadcrumbs[]	= array( 'caption'	=> 'Vote',
				 'url'		=> ''	);


	if (isLoggedIn() && checkReferer() && !isBanned())
	{
				
		if(isset($_POST['vote']))
		{
			$id = (int)$_POST['vote_id'];
			if(IPhasVoted( $_SERVER['REMOTE_ADDR'],$id) == false )
			{
				$account = GetAccountExtraInfo($_SESSION['aid']);
				if(isset($account['vote']))
				{
					$last_time = $account['vote'][$id]['last'];
					if((strtotime(date('c')) - $last_time) > 43200)
					{
						$account['vote'][$id]['last'] = strtotime(date('c'));
						$account['credit'] = $account['credit'] + $config['vote'][$id]['reward'];
						$account['vote'][$id]['ip'] = $_SERVER['REMOTE_ADDR'];
						header('Location: '.$config['vote'][$id]['link']);
					}
					else
					{
							$oSmarty->assign('message',			array( 'type'		=> 'error',
														   'messages'	=> array( 'You have already voted in the last 12 hours!' ) ) );
					}
					
				}
				else
				{
					$account['vote'] = array();
					foreach($config['vote'] as $vote)
					{
						$account['vote'][$vote['id']] = array('last' => 0, 'ip' => '');
					}
					$account['vote'][$id]['last'] = strtotime(date('c'));
					$account['credit'] = $account['credit'] + $config['vote'][$id]['reward'];
					$account['vote'][$id]['ip'] = $_SERVER['REMOTE_ADDR'];
					header('Location: '.$config['vote'][$id]['link']);
				}
				@file_put_contents(BASEDIR.'data'.DIRECTORY_SEPARATOR.'accounts'.DIRECTORY_SEPARATOR.md5($_SESSION['aid']).'.dat',@serialize($account));
			}		
			else
			{
					$oSmarty->assign('message',			array( 'type'		=> 'error',
											   'messages'	=> array( 'You have already voted in the last 12 hours!' ) ) );
			}	
		}
		$oSmarty->assign('votes',		$config['vote']);

	}
	else
	{

		if (!isLoggedIn())
		{
			$oSmarty->assign('message',			array( 'type'		=> 'error',
									       'messages'	=> array( 'You are not logged in.',
									       				  'Please <a href="'.site_url('login').'">login</a>.' ) ) );
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

	$oSmarty->assign('breadcrumbs',		$breadcrumbs);

	// Display page

	$oSmarty->display('file:pages/shop/site_vote.tpl');

?>