{include file='file:core/header.tpl'}
<style type="text/css">
{literal}

a.button{
	background:url(img/button.gif);
	display:block;
	color:#555555;
	font-weight:bold;
	height:30px;
	line-height:29px;
	margin-bottom:14px;
	text-decoration:none;
	width:191px;
}
a:hover.button{
	color:#0066CC;
}

/* -------------------- */
/* CLASSES				*/
/* -------------------- */
	.add{
		background:url(img/add.gif) no-repeat 10px 8px;
		text-indent:30px;
		display:block;
	}
	.delete{
		background:url(img/delete.gif) no-repeat 10px 8px;
		text-indent:30px;
		display:block;
	}
	.user{
		background:url(img/user.gif) no-repeat 10px 8px;
		text-indent:30px;
		display:block;
	}
	.alert{
		background:url(img/alert.gif) no-repeat 10px 8px;
		text-indent:30px;
		display:block;
	}
	.msg{
		background:url(img/msg.gif) no-repeat 10px 8px;
		text-indent:30px;
		display:block;
	}
	.download{
		background:url(img/download.gif) no-repeat 10px 8px;
		text-indent:30px;
		display:block;
	}

	.lens{
		background:url(img/lens.gif) no-repeat 10px 8px;
		text-indent:30px;
		display:block;
	}
	.info{
		background:url(img/info.gif) no-repeat 10px 8px;
		text-indent:30px;
		display:block;
	}
	{/literal}
</style>
		{include file='file:sidebars/left.tpl'}
 		<div id="main">
			<div class="breadcrumb">
			{foreach item=breadcrumb from=$breadcrumbs}
				{if $breadcrumb.url eq ""}
						{$breadcrumb.caption} &gt;
				{else}
						<a href="{$breadcrumb.url}">{$breadcrumb.caption}</a> &gt;
				{/if}
			{/foreach}
			</div>
		<!-- B.2 MAIN CONTENT -->
		<h2 class="pageTitle"><img src="images/title/page_news.png" alt="Manage News" /></h2>
		<div class="content">

				<p>Here you can manage your news. You can add HTML to your news-entries but be very careful
				   when doing so as the text is outputted <b>without</b> any filtering! So if you mess
				   up the HTML there, your site will be messed up, too.</p>

{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}
				<a href="{$script_url}?act=admin&sact=newsadd" class="button" > <span class="add">Add new News-Entry</span></a>

				<table width="70%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
					<tr>
						<th scope="col" class="top">Headline</th>
						<th scope="col" class="top" style="width:90px;">Category</th>
						<th scope="col" class="top" style="width:70px;">Date</th>
						<th scope="col" class="top" style="width:50px;">Action</th>
					</tr>
{if count($news) gt 0}
			{foreach item=entry from=$news}
					<tr>
						<td><a href="{$script_url}?act=admin&sact=newsedit&id={$entry.id}">{$entry.headline}</a></td>
						<td style="text-align:center">{$entry.category}</td>
						<td style="text-align:center">{$entry.date|date_format:"%Y-%m-%d<br />%H:%M:%S"}</td>
						<td style="text-align:center"><a href="{$script_url}?act=admin&sact=newsdelete&id={$entry.id}"><img src="images/button/delete.png" alt="delete"></a></td>
					</tr>
			{/foreach}
{else}
					<tr>
						<td colspan="4">No news found.</td>
					</tr>
{/if}

				</table><br>
				<a href="{$script_url}?act=admin&sact=newsadd" class="button" > <span class="add">Add new News-Entry</span></a>
			</div>

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}