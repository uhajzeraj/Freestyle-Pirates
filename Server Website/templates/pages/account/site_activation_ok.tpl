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
		<h2 class="pageTitle"><img src="images/title/page_activation.png" alt="Activation" /></h2>
		<div class="content">
		
			<div class="column1-unit">
{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{else}
			<p>Your account has successfully been activated. You can now login to the game.</p>
{/if}
			</div>

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}