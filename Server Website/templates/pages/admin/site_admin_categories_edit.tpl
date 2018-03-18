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
		<h2 class="pageTitle"><img src="images/title/page_news.png" alt="Edit Download-Categories" /></h2>
		<div class="content">
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
				<div class="simpleform">
					<form method="post" action="{$script_url}">
						<input type="hidden" name="act" value="admin" />
						<input type="hidden" name="sact" value="categoryedit" />
						<input type="hidden" name="edit" value="1" />
						<input type="hidden" name="id" value="{$form_id}" />
						<p><label for="dl_category" class="left">Category:</label>
							<input type="text" name="dl_category" id="dl_category" class="inputText" value="{$form_category}" tabindex="1" style="width:340px;" /></p>
						<p><input type="submit" name="submit" id="submit" class="button" value="Edit" tabindex="2" /></p>
						<p>&nbsp;</p>
					</form>
				</div>
{/if}
			</div>
		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}