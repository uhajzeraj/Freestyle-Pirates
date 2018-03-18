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
			<h2 class="pageTitle"><img src="images/title/page_screenshots.png" alt="Screenshots" />Map of {$map.name}</h2>
			<ul class="pageNav clearfix">
				{foreach item=map from=$maps key=id}
					<li> <a href="{$script_url}?act=world&map={$id}">{$map.caption}</a></li>
				{/foreach}
			</ul>
			<div class="content">
				<div class="text">
					<p>Please choose one of the given Maps to view, you can find many important information about the maps.</p>
				</div>
			</div>
		</div>
		</div>
	</div>

{include file='file:core/footer.tpl'}