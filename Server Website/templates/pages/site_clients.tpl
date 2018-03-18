<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>News List</title>
<style type="text/css">
{literal}
body{ margin:0; padding:0; background:#82CEFF; font-size:11px; font-family:Verdana, Arial, Helvetica, sans-serif; color:#333;}
a{ text-decoration:none; color:#333;}
a:hover{ text-decoration:none; color:#900;}
img{ border:0;}
#Container{ margin:0 auto; width:260px;}
#List{ float:left; width:260px; height:200px; background:url(images/bgright.jpg) no-repeat;}
#Announce{ clear:both; margin:11px 2px; width:250px; height:18px; background:url(images/bgannounce.jpg) no-repeat; padding:7px 11px 0 35px; line-height:12px; overflow:hidden;}
#List ul{ padding:0; margin:0; list-style:none;}
#List li.Title{ float:left; margin-left:8px; height:24px; border-bottom:1px solid #EFE7D6; width:170px; line-height:24px; display:inline;}
#List li.Date{ float:left; margin-left:6px; height:24px; border-bottom:1px solid #EFE7D6; width:70px; line-height:24px; display:inline;}
#List li.More{ clear:both; padding:10px 15px; text-align:right; height:15px;}
{/literal}
</style>
</head>
<body SCROLL=NO>
<div id="Container">
	<div id="List">
		<div id="Announce">
			<marquee direction="left" behavior="scroll" scrollamount="2" scrolldelay="50">
				Welcome to {$servername} !! Enjoy our new features!! Have fun !! ^^
			</marquee>
		</div>
		<ul>
			{foreach item=curnews from=$news}
				<li class="Title"><a href="{$script_url}?act=newsview&id={$curnews.news_id}" target="_blank" style="">{$curnews.headline}</a></li><li class="Date">{$curnews.date|date_format}</li>
			{/foreach}
		</ul>
	</div>
</div>

</body></html>