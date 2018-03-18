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
		<h2 class="pageTitle"><img src="images/title/page_title.png" alt="Password Changed" /></h2>
		<div class="content">

			<div class="column1-unit">
			<p>Your account-password was successfully changed.</p>
			<p>You've been logged out for security reasons! Feel free to <a href="{$script_url}?act=login">login</a> again now using your <b>new</b> password.</p>
			</div>

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}