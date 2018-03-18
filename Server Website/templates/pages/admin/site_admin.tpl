{include file='file:core/header.tpl'}

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
		<h2 class="pageTitle"><img src="images/title/page_account.png" alt="Account" /></h2>
			<div class="mallSearch clearfix">
                <form method="post" action="{$script_url}?act=admin&sact=account" onsubmit="{literal}if ($.trim(this.keyword.value) == '') { alert('Please enter a keyword to search!'); $(this.keyword).focus(); return false; }{/literal}">
                    <input type="text" class="schInput" name="keyword"><input type="image" src="{$base_url}images/btn_mall_search.png" class="btn">
                </form>
            </div>
			<div class="mall clearfix">
				<div class="mallRecord">
					<ul class="mallSortNav" style="height:10px;">
						<li><a href="{$script_url}?act=admin&sact=rules">Edit Rules</a></li>
						<li><a href="{$script_url}?act=admin&sact=news">Edit News</a></li>
						<li><a href="{$script_url}?act=admin&sact=authors">Edit Authors</a></li>
						<li><a href="{$script_url}?act=admin&sact=ncategories">Edit Categories</a></li>
						<li><a href="{$script_url}?act=admin&sact=downloads">Edit Downloads</a></li>
						<li><a href="{$script_url}?act=admin&sact=shop">Mall Pannel</a></li>
                    </ul>
					<h4 class="title">Admin Dashboard</h4>
					<div class="mallRecordMain" style="text-align:center;">
			<h1>Statistics</h1>
			<table  width="70%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
				<tr>
					<th class="top" style="width:200px">Currently Logged In</td>
					<td>{$admstats.login}</td>
				</tr>
				<tr>
					<th class="top">Currently Playing</td>
					<td>{$admstats.play}</td>
				</tr>
				<tr>
					<th class="top">Unique MACs</td>
					<td>{$admstats.unique_mac}</td>
				</tr>
				<tr>
					<th class="top">New Chars in the last 24h</td>
					<td>{$admstats.new_players}</td>
				</tr>
{if 0 eq 1}
This doesn't work at the moment!
				<tr>
					<th class="top">New Accounts in the last 24h</td>
					<td>{$admstats.new_accounts}</td>
				</tr>
{/if}
				<tr>
					<th class="top">Total Accounts</td>
					<td>{$admstats.acc_count}</td>
				</tr>
				<tr>
					<th class="top">Total Characters</td>
					<td>{$admstats.players}</td>
				</tr>
			</table>

			<h1>Users online today</h1>
			<p><img src="{$script_url}?act=graph&sact=onlinetoday" style="bordeR:0px;" alt="Users online today" /></p>
			<p style="text-align:center"><span style="color:#c8e664;"><b>Logged In</b></span> - <span style="color:#c86400;"><b>Playing</b></span></p>

			<h1>Users online yesterday</h1>
			<p><img src="{$script_url}?act=graph&sact=onlineyesterday" style="bordeR:0px;" alt="Users online yesterday" /></p>
			<p style="text-align:center"><span style="color:#c8e664;"><b>Logged In</b></span> - <span style="color:#c86400;"><b>Playing</b></span></p>
		</div>
		</div>
	</div>
</div>
</div>


{include file='file:core/footer.tpl'}