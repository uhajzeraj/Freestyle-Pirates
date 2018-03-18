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
                    <input type="text" class="schInput" name="keyword" value="{$keyword}"><input type="image" src="{$base_url}images/btn_mall_search.png" class="btn">
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
						<li><a href="{$script_url}?act=admin&sact=shop&type=1">Mall</a></li>
						<li><a href="{$script_url}?act=admin&sact=shop&type=2">Award</a></li>
                    </ul>
					<h4 class="title">Edit Account {$account.name}</h4>
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
{if $skip_form neq true}
	{if count($account) gt 0}
				<div class="simpleform">
					<form method="post" action="{$script_url}?act=admin&sact=account&id={$account.id}">
						<input type="hidden" name="act" value="admin" />
						<input type="hidden" name="sact" value="account" />
						<input type="hidden" name="id" value="{$account.id}" />
						<input type="hidden" name="keyword" value="{$account.name}" />
						<p><input type="text" class="field" value="Name: {$account.name} ID: {$account.id} " tabindex="1" style="width:98%;text-align:center" disabled></p>
						<p><input type="text" class="field" value="Mac: {$account.last_login_mac}" tabindex="1" style="width:98%;text-align:center" disabled></p>
						<p><input type="text" class="field" value="IP: {$account.last_login_ip}" tabindex="1" style="width:98%;text-align:center" disabled></p>
						<p>Email: <input type="text" class="field" name="email" value="{$account.email}" tabindex="1" style="width:89%;text-align:center" ></p>
						<p>Password: <input type="text" class="field" name="password" value="{$account.originalpassword}" tabindex="1" style="width:82%;text-align:center" ></p>
						<p>
						<center>
							Ban: <input type="checkbox" name="ban" value="1" {if $account.ban neq 0} checked{/if}> Points:({$account.pts}) + <input type="text" class="field" name="pts" value="0" tabindex="1" style="width:20%;text-align:center" > Credits:({$account.cts}) + <input type="text" class="field" name="cts" value="0" tabindex="1" style="width:20%;text-align:center" >
							VIP: <input type="text" class="field" name="vip" value="{$account.vip}" tabindex="1" style="width:10%;text-align:center" >
						</center>
						</p>
						<p><input type="submit" name="submit" id="submit" class="button" value="Edit" tabindex="2" /></p>
						<p>&nbsp;</p>
					</form>
				</div>
	{/if}
{/if}
					</div>
				</div>
			</div>
		</div>
	</div>


{include file='file:core/footer.tpl'}