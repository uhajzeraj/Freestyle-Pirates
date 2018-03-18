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
		<h2 class="pageTitle"><img src="images/title/page_rules.png" alt="Manage Rules" /></h2>
		<div class="content">

			<p>You can edit your server-rules in the form below. Be <b>very</b> careful!</p>

			<div class="column1-unit">
{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}
				<div class="simpleform">
					<form method="post" action="{$script_url}">
						<input type="hidden" name="act" value="admin" />
						<input type="hidden" name="sact" value="rules" />
						<p><textarea name="rules" cols="50" rows="10" style="width:460px;height:300px;" tabindex="1">{$rules}</textarea></p>
						<p><input type="submit" name="submit" id="submit" class="button" value="OK" tabindex="2" /></p>
						<p>&nbsp;</p>
					</form>
				</div>              
			</div>

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}