<?php

	// ===================================================================================================
	// Package      : pkoSite
	// File         : inc.news.php
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

	require_once(BASEDIR.'classes'.DIRECTORY_SEPARATOR.'class.maps.php');					// Maps-class
	
	$mapPlanning = new MapPlanning();
	
	foreach($config['maps'] as $name => $timing)
	{
        $mapPlanning->SetMapEntryTime($name, $timing[0], $timing[1], $timing[2], $timing[3]);
	}
	
	$maps = array();
	
	foreach ($mapPlanning->getMapList() as $mapName)
	{
		$maps[] = array('name' => $mapName,
						'isOpen' => $mapPlanning->isMapOpened($mapName),
						'closingTime' => (($mapPlanning->isMapOpened($mapName)) ? $mapPlanning->getMapClosingTime($mapName) : 0),
						'portalOpen' => $mapPlanning->isPortalOpened($mapName),
						'portCloseTime' => (($mapPlanning->isPortalOpened($mapName)) ? $mapPlanning->getPortalClosingTime($mapName) : 0),
						'sessions' =>  $mapPlanning->getNextSessions($mapName, 2),
						);
	}
		
	$oSmarty->assign('maps',		$maps);
	// Assign Breadcrumb-Navigation

	$breadcrumbs	= array();

	$breadcrumbs[]	= array( 'caption'	=> 'Home',
				 'url'		=> $config['script_url']			);

	$breadcrumbs[]	= array( 'caption'	=> 'Maps',
				 'url'		=> ''						);

	$oSmarty->assign('breadcrumbs',		$breadcrumbs);

	// Display Template

	if (!$error)
		$oSmarty->display('file:pages/site_maps.tpl');

?>