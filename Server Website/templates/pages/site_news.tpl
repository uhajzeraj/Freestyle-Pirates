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

			<!-- Pagetitle -->
			<h2 class="pageTitle"><img src="images/title/page_news.png" alt="News" /></h2>
						<ul class="pageNav clearfix">
                			<li><a href="{$script_url}?act=news&cid=1">News</a></li>
                			<li><a href="{$script_url}?act=news&cid=2">Events</a></li>
                			<li><a href="{$script_url}?act=news&cid=3">Others</a></li>
                		</ul>
			<div class="content">
{if $news neq false}
			<table width="100%" id="results">
				
		{foreach item=curnews from=$news}
					<tr><td><ul class="newsList"><li><a href="{$script_url}?act=newsview&id={$curnews.id}&cid={$current_category}">[{$curnews.category}] {$curnews.headline}</a><span class="listRight"><small>({$curnews.date|date_format:"%Y-%m-%d / %H:%M"} by {$curnews.author})</small></span></li></ul></td></tr>
		{/foreach}
				
			</table>
{if count($news) > 10}
			<ul id="pageNavPosition" class="pageInfo">
			</ul>
	<script type="text/javascript"><!--
        var pager = new Pager('results', 17); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>			
{/if}
{else}
				<p>No News in archive.</p>
{/if}
			</div>                                    


		</div>
	</div>

{include file='file:core/footer.tpl'}