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
						<li class="current"><a href="{$script_url}?act=admin&sact=shop">Mall Pannel</a></li>
                    </ul>
					<h4 class="title">Manage mall Items</h4>
					<div class="mallRecordMain" style="text-align:center;">
{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}
			<div class="guideContentMenu">
				<ul>
					<li><a href="{$script_url}?act=admin&sact=shop&action=add">Add Package</a></li>
					<!--<li><a href="{$script_url}?act=admin&sact=shop&action=add2">Make Package</a></li>-->
					<li><a href="{$script_url}?act=admin&sact=shop&type=1">Manage Item Mall</a></li>
					<li><a href="{$script_url}?act=admin&sact=shop&type=2">Manage Award Center</a></li>
				</ul>
			</div>
{if count($package) gt 0}
			{foreach item=pack from=$package key=pos}
			<table width="80%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center" style="padding:10px;">
				<tbody>
					<tr>
						<td>
							<b><a href="{$script_url}?act=admin&sact=shop&action=edit&id={$pack.id}&type={$pack.type}">{$pack.name}</a></b>
						</td>                                                                              
						<td width="250">
							<center>
								<small>{$pack.description}</small><br />
								<a href="#" onClick="$('#info_{$pack.id}').show();">Details</a>
							</center>
						</td>
						<td width="100">
							<center><a href="{$script_url}?act=admin&sact=shop&action=delete&id={$pack.id}&type={$pack.type}"><img src="images/button/delete.png" alt="delete"></a></center>
						</td>
					</tr>
					<tr id="info_{$pack.id}" style="display:none;" >
						<td colspan="3">
							<b>Contains:</b><span style="float:right;"><a href="javascript:$('#info_{$pack.id}').hide();">X</a></span>
							{foreach item=item from=$pack.items}
								<ul>
									<li>
										{$item.amount}x {$item.info.name}<br/><small>{$item.info.description}</small>
									</li>
								</ul>
							{/foreach}
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<center>Price: <b>{$pack.price} Point(s)</b></center>
						</td>
					</tr>
				</tbody>
			</table><br/>
			{/foreach}
{/if}
			
		</div>
		</div>
	</div>
</div>
</div>


{include file='file:core/footer.tpl'}