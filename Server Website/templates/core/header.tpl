<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="3600" />
		<meta name="revisit-after" content="2 days" />
		<meta name="robots" content="index,follow" />
		<meta name="publisher" content="Your publisher infos here ..." />
		<meta name="copyright" content="Your copyright infos here ..." />
		<meta name="author" content="Design: 1234.info / Modified: {$servername}" />
		<meta name="distribution" content="global" />
		<meta name="description" content="Your page description here ..." />
		<meta name="keywords" content="Your keywords, keywords, keywords, here ..." />
		<link rel="stylesheet" type="text/css" media="screen,projection,print" href="{$base_url}/css/base.css" />
		<link rel="stylesheet" type="text/css" media="screen,projection,print" href="{$base_url}/css/include.css" />
		<link rel="stylesheet" type="text/css" media="screen,projection,print" href="{$base_url}/css/style.css" />
		<link rel="stylesheet" type="text/css" media="screen,projection,print" href="{$base_url}/css/jquery.tooltip.css" />
		<link type="text/css" href="{$base_url}/css/ui-lightness/jquery-ui-1.8.16.custom.css" rel="stylesheet" />	
		<link rel="icon" type="image/x-icon" href="{$base_url}/img/favicon.ico" />
		<title>{$servername}{$pagename}</title>
		<script type="text/javascript" src="http://www.google.com/jsapi"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.0/jquery.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="{$base_url}/js/jquery.tooltip.js"></script>
		<script type="text/javascript" src="{$base_url}/js/jquery.jclock.js"></script>
		<script type="text/javascript" src="{$base_url}/js/jquery.confirm.js"></script>
		<script src="{$base_url}js/jquery.cluetip.js" type="text/javascript"></script>
		<script type="text/javascript" src="{$base_url}/js/paging.js"></script>
		<script type="text/javascript" src="{$base_url}/js/subnav.js"></script>
		<script type="text/javascript" src="{$base_url}/js/swfobject22.js"></script>
		<script type="text/javascript" src="{$base_url}/js/jquery-ui-1.8.16.custom.min.js"></script>
{literal}
        <style type="text/css">    
            .pg-normal {
                color: black;
                font-weight: normal;
                text-decoration: none;    
                cursor: pointer;    
            }
            .pg-selected {
                color: red;
                font-weight: bold;        
                text-decoration: underline;
                cursor: pointer;
            }
        </style>
		<style type="text/css" media="screen">#slideshow {visibility:hidden}</style>
{/literal}
	</head>
<body >
	<div id="cboxOverlay" style="cursor: auto; display: none; opacity: 0.5; "></div><div id="colorbox" style="padding-bottom: 0px; padding-right: 0px; width: 520px; height: 388px; top: 116px; left: 380px; display: none; opacity: 1; "><div id="cboxWrapper" style="width: 520px; height: 388px; "><div><div id="cboxTopLeft" style="float: left; "></div><div id="cboxTopCenter" style="float: left; width: 520px; "></div><div id="cboxTopRight" style="float: left; "></div></div><div><div id="cboxMiddleLeft" style="float: left; height: 388px; "></div><div id="cboxContent" style="float: left; width: 520px; height: 388px; "><div id="cboxLoadingOverlay" class="" style="display: none; height: 388px; "></div><div id="cboxLoadingGraphic" class="" style="display: none; height: 388px; "></div><div id="cboxTitle" class="" style="display: block; "></div><div id="cboxCurrent" class="" style="display: none; "></div><div id="cboxSlideshow" class="" style="display: none; "></div><div id="cboxNext" class="" style="display: none; "></div><div id="cboxPrevious" class="" style="display: none; "></div><div id="cboxClose" class="">close</div></div><div id="cboxMiddleRight" style="float: left; height: 388px; "></div></div><div><div id="cboxBottomLeft" style="float: left; "></div><div id="cboxBottomCenter" style="float: left; width: 520px; "></div><div id="cboxBottomRight" style="float: left; "></div></div></div><div style="position:absolute; top:0; left:0; width:9999px; height:0;"></div></div>

		<noscript>
			<div style="height:31px; border:1px solid #FFCC66; background:#FFFFCC;text-align:center; font:normal 12px/31px Verdana, Arial, Helvetica, sans-serif; color:#F00;">
			JavaScript has been disabled in your browser. Please enable JavaScript to fully enjoy the services provided by {$servername}.
			</div>
		</noscript>
<div id="container">
	<div id="header">
	<h1 class="logo"><a href="{$script_url}" title="{$servername}">{$servername}</a></h1>
	<div class="nav" id="nav">
		<ul>
			<li class="s1"><a href="{$script_url}">Homepage</a></li>
			<li class="s2"><a href="{$script_url}?act=world" rel="subNav2">Guide</a></li>
			<li class="s3"><a href="{$script_url}?act=news" rel="subNav3">News</a></li>
{if $user.is_logged_in}
			<li class="s4"><a href="{$script_url}?act=account" rel="subNav4">Account</a></li>
{else}
			<li class="s4"><a href="{$script_url}?act=login" rel="subNav4">Account</a></li>
{/if}
			<li class="s5"></li>
			<li class="s6"><a href="{$script_url}?act=downloads" rel="subNav6">Download</a></li>
			<li class="s7"><a href="{$script_url}?act=donate" rel="subNav7">Mall</a></li>
			<li class="s8"><a href="" rel="subNav8">Community</a></li>
			<li class="s9"><a href="{$script_url}?act=contact" rel="subNav9">Support</a></li>
		</ul>
	</div>
	<div id="subNav">
		<div class="subNav" id="subNav2">
			<ul>
				<li><a href="{$script_url}?act=world">World Map</a></li>
			</ul>
		</div>
		<div class="subNav" id="subNav3">
			<ul>
				<li><a href="{$script_url}?act=news&amp;cid=1">News</a></li>
				<li><a href="{$script_url}?act=news&amp;cid=2">Events</a></li>
				<li><a href="{$script_url}?act=news&amp;cid=3">Others</a></li>
			</ul>
		</div>
		<div class="subNav" id="subNav4">
			<ul>
{if $user.is_logged_in}
				<li><a href="{$script_url}?act=account&amp;sact=account">Profile</a></li>
				<li><a href="{$script_url}?act=account&amp;sact=chars">Your Characters</a></li>
{if $enable_guild_admin}
				<li><a href="{$script_url}?act=account&amp;sact=guilds">Your Guilds</a></li>
{/if}
				<li><a href="{$script_url}?act=account&amp;sact=changepw">Change Password</a></li>
				<li><a href="{$script_url}?act=account&amp;sact=changemail">Change eMail</a></li>
{else}
				<li><a href="{$script_url}?act=register">Register</a></li>
				<li><a href="{$script_url}?act=forgot">Retrieve Password</a></li>
{/if}
{if $user.is_admin}
				<li><a href="{$script_url}?act=admin&amp;sact=admin">Dashboard</a></li>
{/if}
			</ul>
		</div>
		<div class="subNav" id="subNav6">
			<ul>
				<li><a href="{$script_url}?act=downloads&amp;cid=1">Client</a></li>
				<li><a href="{$script_url}?act=downloads&amp;cid=2">Patches</a></li>
			</ul>
		</div>
		<div class="subNav" id="subNav7">
			<ul>
		<li><a href="{$script_url}?act=donate">Buy Points</a></li>
		<li><a href="{$script_url}?act=shop&sact=mall"> Item Mall</a></li>
                <li><a href="{$script_url}?act=shop&sact=award">Award Center</a></li>
                <li><a href="{$script_url}?act=vote">Vote for Credits</a></li>
			</ul>
		</div>
		<div class="subNav" id="subNav8">
			<ul>
				<li><a href="http://www.facebook.com/FreestylePiratesOnline">Facebook</a></li>

			</ul>
		</div>
		<div class="subNav" id="subNav9">
			<ul>
				<li><a href="{$script_url}?act=contact">Contact Us</a></li>

			</ul>
		</div>
		<script type="text/javascript">cssdropdown.startchrome("nav")</script>
	</div>
	<div class="slogan" id="slogan">
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" height="120" width="600">
			<param name="allowScriptAccess" value="always" />

			<param name="movie" value="flash/slogan.swf" />
			<param name="quality" value="high" />
			<param name="wmode" value="transparent" />
			<embed src="flash/slogan.swf" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" height="120" width="600"></embed>
		</object>
	</div>
</div>