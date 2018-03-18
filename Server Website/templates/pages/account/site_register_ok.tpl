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
		<h2 class="pageTitle"><img src="images/title/page_register.png" alt="Registration OK" /></h2>
		<div class="content">

			<div class="column1-unit">
			<p>Your account has successfully been created.</p>
{if $show_mail_info}
			<p style="color:#b00;"><b>An eMail with an activation-link was sent to your email-address. Please check your emails for further informations.</b></p>
{else}
			<p>You can now <a href="{$script_url}?act=login">login</a> using your username and password.</p>
{/if}
			</div>

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}