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
		<h2 class="pageTitle"><img src="images/title/page_guide.png" alt="Guide" /></h2>
		<div class="content">
			<!-- Pagetitle --><br>
			<h3 class="guideTitle"> Rules</h3>


			<div class="guideContent">
			<p><br />
				{$rules}
			</p>
			</div>
			</div>
		</div>
	</div>

{include file='file:core/footer.tpl'}