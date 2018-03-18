<?php

	// ===================================================================================================
	// Package      : pkoSite
	// File         : inc.account.php
	// Version      : 1.0.0
	// Author       : SnowCrash
	// ===================================================================================================
	// History:
	//
	// v1.0.0       : release of the FINAL version ;o)
	// v0.0.3b      : some minor changes regarding filenames
	// v0.0.3	: added more guild-features, moved functions to seperate files
	// v0.0.2	: added guild-view
	// v0.0.1c      : changed some functions to use act_name instead of act_id
	// v0.0.1       : first release
	// ===================================================================================================
	// Disclaimer   : To make it short - if you steal code you're a pathetic, little loser :-)
	// ===================================================================================================

	// Prevent people from calling this file directly! Normally it doesn't matter but its always better
	// being save than being sorry.

	if (!defined('PKOSITE'))
		die('Go away!');

	// ===================================================================================================
	// I moved most of the function to some seperate files as the code is easier to maintain that way.
	// I don't like huge files ;o)
	
	
	function account_characters()
	{

		global $config, $oSmarty;

		// Load chars for this Account

		if ($config['max_compatibility_mode'])
		{
			$sql	= '
					SELECT
						c.cha_id, c.cha_name, c.icon, c.act_id, c.job, c.degree, c.hp, c.sp,
						CASE WHEN (c.exp < 0) THEN (c.exp+4294967296) ELSE c.exp END AS exp,
						c.ap, c.tp, c.gd, c.map, c.map_x, c.map_y, c.look, c.skillbag, c.shortcut,
						c.mission, c.misrecord, c.mistrigger, c.miscount, c.birth, c.str, c.dex,
						c.agi, c.con, c.sta, c.credit,
						CASE WHEN (g.guild_id = 0) THEN \'\' ELSE guild_name END AS guild_name
					FROM
						'.TABLE_CHARACTER.' AS c
					LEFT JOIN
						'.TABLE_GUILD.' AS g ON ((c.guild_id = g.guild_id) AND (c.guild_stat = 0))
					LEFT JOIN
						'.TABLE_ACCOUNT.' AS a ON (c.act_id = a.act_id)
					WHERE
						(a.act_name	= \''.addslashes_mssql($_SESSION['name']).'\') AND
						(c.delflag	= 0)
					ORDER BY
						c.cha_name';
		}
		else
		{
			$sql	= '
				SELECT
					c.cha_id, c.cha_name, c.icon, c.act_id, c.job, c.degree, c.hp, c.sp,
					CASE WHEN (c.exp < 0) THEN (c.exp+4294967296) ELSE c.exp END AS exp,
					c.ap, c.tp, c.gd, c.map, c.map_x, c.map_y, c.look, c.skillbag, c.shortcut,
					c.mission, c.misrecord, c.mistrigger, c.miscount, c.birth, c.str, c.dex,
					c.agi, c.con, c.sta, c.credit,
					CASE WHEN (g.guild_id = 0) THEN \'\' ELSE guild_name END AS guild_name
				FROM
					'.TABLE_CHARACTER.' AS c
				LEFT JOIN
					'.TABLE_GUILD.' AS g ON ((c.guild_id = g.guild_id) AND (c.guild_stat = 0))
				WHERE
					(c.act_id	= '.(int)$_SESSION['aid'].') AND
					(c.delflag	= 0)
				ORDER BY
					c.cha_name';
		}

	        $chars		= doQuery($sql, DATABASE_GAME);

	        if ($chars !== false)
	        {

	                $characters	= array();

	                while ($row = mssql_fetch_assoc($chars))
	                {

	                        // move data into a new array and "htmlspecialchars" it so HTML won't break ;-)

				$characters[]	= array( 'name'		=> htmlspecialchars($row['cha_name']),
							 'level'	=> (int)$row['degree'],
							 'guild'	=> htmlspecialchars($row['guild_name']),
							 'exp'		=> (int)$row['exp'],
							 'char'		=> htmlspecialchars($config['chars'][$row['icon']]),
							 'job'		=> htmlspecialchars(getJobName($row['job'])),
							 'id'		=> (int)$row['cha_id'],
							 'rep'		=> (int)$row['credit'],
							 'credits'	=> (int)$row['credit']/$config['credits'],
							 'picture'	=> getCharPicture($row['icon'],$row['job']),
							 'gold'		=> (int)$row['gd'],
							 'ap'		=> (int)$row['ap'],
							 'tp'		=> (int)$row['tp'],
							 );

					}
					
				$oSmarty->assign('characters',	$characters);
					
			}
			if(($chars !== false))
			{
				return true;
			}

		return false;

	}
	
	
	function ReputationExchange($id)
	{

		global $config, $oSmarty;

		$chars		= doQuery('SELECT * FROM '.TABLE_CHARACTER.' WHERE cha_id = '.$id,DATABASE_GAME);

	        $row = mssql_fetch_array($chars);

		if ( $row['mem_addr'] == 0 )
	        {
			$credits = ($row['credit'] / $config['credits']) ;
			if ($row['credit'] < $config['credits'])
			{
				$oSmarty->assign('message',			array( 'type'		=> 'error',
						 'messages'		=> array( 'You do not got enough Reputation to exchange.' ) ) );
			}
			else
			{
				
				$removerep	= doQuery(' UPDATE '.TABLE_CHARACTER.' SET credit = 0 WHERE cha_id = '.$id,DATABASE_GAME);
			
				if (!$removerep)
					return false;
				else
				{
					SetAccountExtraInfo($_SESSION['aid'],$credits,0);
					$oSmarty->assign('message',		array( 'type'		=> 'ok',
							 'messages'		=> array( 'Successful exchanged Reputation to Credit!' ) ) );
					return true;
				}
			}

		}
			$oSmarty->assign('message',			array( 'type'		=> 'error',
							 'messages'		=> array( 'The select character is currently online, please log out In-Game!' ) ) );
		return false;

	}
	// ===================================================================================================


	// Build Breadcrumb-Navigation

	$breadcrumbs	= array();

	$breadcrumbs[]	= array( 'caption'	=> 'Home',
				 'url'		=> $config['script_url']			);

	//

	if (isLoggedIn() && checkReferer() && !isBanned())
	{

		$id			= 0;

		if ((isset($_GET['id'])) || (isset($_POST['id'])))
			$id		= ((isset($_POST['id'])) ? (int)$_POST['id'] : (int)$_GET['id']);


				account_characters();
				
				if (isset($_POST['exchange']))
				{
					if($_POST['char_select'] != '')
						ReputationExchange($_POST['char_select']);
					else
					{
						$oSmarty->assign('message',			array( 'type'		=> 'error',
										 'messages'		=> array( 'You haven\'t selected a character!' ) ) );
					}
				}
		
				$breadcrumbs[]	= array( 'caption'	=> 'Exchange',
							 'url'		=> site_url('exchange')		);

				$breadcrumbs[]	= array( 'caption'	=> 'Reputation',
							 'url'		=> ''				);

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

	// Assign Breadcrumbs

  	$oSmarty->assign('breadcrumbs',		$breadcrumbs);

	// Display Template

  	if (!$error)
		$oSmarty->display('file:pages/shop/site_credits.tpl');

?>