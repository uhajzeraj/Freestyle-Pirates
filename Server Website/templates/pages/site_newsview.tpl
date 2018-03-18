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
			<!-- Pagetitle -->
			<h2 class="pageTitle"><img src="images/title/page_news.png" alt="News" /></h2>
			
			<div class="content">
				<h2 class="artTitle">[{$news.category}] {$news.headline}</h2>                            
				<h3 class="artInfo">by {$news.author} on {$news.date|date_format:"%A, %B %e, %Y"}</h3>
				<div class="artContent">
				<p>{$news.body|nl2br}</p>
				</div>        
				<div class="moreList">
					<ul>
						<li><div class="sort"><a href="{$script_url}?act=news&cid={$current_category}">Back to News-Archive</a></div></li>
					</ul>
				</div>
			</div>
                
						</div>
				</div>
				<!--item mall main end-->
			</div>
			<!--Content End-->
		</div>
	</div>


{include file='file:core/footer.tpl'}