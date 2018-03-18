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
			<h2 class="pageTitle"><img src="images/title/page_ranking.png" alt="Rankings" /></h2>
			<ul class="pageNav clearfix">
					<li > <a href="{$script_url}?act=ranking&rank=exp&server={$sidn}">Top Pirates</a></li>
					{if $show_richest}
					<li> <a href="{$script_url}?act=ranking&rank=gold&server={$sidn}">Richest Pirates</a></li>
					{/if}
					<li class="current"> <a href="">Top Guilds</a></li>
			</ul>
			<div class="content">
					{foreach item=server from=$servers key=pos}
						<option value="{$pos}" {if $pos eq $sidn}selected{/if}> {$server} </option>
			{/foreach}
					</select>
			<h3 class="guideTitle">Top Guilds</h3><br/>

			<table width="90%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center" >

			<tr>
				<th scope="col" class="top" width="30">#</th>
				<th scope="col" class="top">Guild</th>
				<th scope="col" class="top">Leader</th>
			</tr>
{if count($guilds) gt 0}
			{foreach item=guild from=$guilds key=pos}
				<tr>
					<td>{$pos}</td>
					<td><b>{$guild.name}</b>
					{if $guild.motto neq ""}
					<br /><small>( {$guild.motto} )</small>
					{/if}
					</td>
					<td>{$guild.leader}</td>
				</tr>
			{/foreach}
{else}
				<tr>
					<td colspan="3">No guilds found.</td>
				</tr>
{/if}
			</table>
{if count($guilds) gt 0}
			<ul id="pageNavPosition" class="pageInfo">
			</ul>
	<script type="text/javascript"><!--
        var pager = new Pager('results', 10); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
{/if}
			<p></p>
			<p><b>Attention</b>: The Top-Guilds are based on the number of members! The experience, wealth, etc. don't play any role in this list!</p>

		</div>
                
		</div>
	</div>

{include file='file:core/footer.tpl'}