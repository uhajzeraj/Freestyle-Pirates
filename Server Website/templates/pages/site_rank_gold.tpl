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
					<li class="current" > <a href="">Richest Pirates</a></li>
					{/if}
					<li > <a href="{$script_url}?act=ranking&rank=guild&server={$sidn}">Top Guilds</a></li>
			</ul>
			<div class="content">
					{foreach item=server from=$servers key=pos}
						<option value="{$pos}" {if $pos eq $sidn}selected{/if}> {$server} </option>
			{/foreach}
					</select>
			<h3 class="guideTitle">Richest Pirates</h3><br/>

			<table width="90%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center" id="results" >

			<tr>
				<th scope="col" class="top" width="30">#</th>
				<th scope="col" class="top">Player</th>
				<th scope="col" class="top" width="70">Gold</th>
				<th scope="col" class="top">Guild</th>
				<th scope="col" class="top">Char/Job</th>
			</tr>
{if count($players) gt 0}
			{foreach item=player from=$players key=pos}
				<tr>
					<td>{$pos}</td>
					<td><b>{$player.name}</b></td>
					<td>{$player.gold}</td>
					<td>
						{if $player.guild neq ""}
							{$player.guild}
						{else}
							-none-
						{/if}
					</td>
					<td>{$player.char}<br />{$player.job}</td>
				</tr>
			{/foreach}
{else}
				<tr>
					<td colspan="5">No players found!?</td>
				</tr>
{/if}
			</table>
{if count($players) gt 0}
			<ul id="pageNavPosition" class="pageInfo">
			</ul>
	<script type="text/javascript"><!--
        var pager = new Pager('results', 10); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
{/if}
			<p><b>Attention</b>: The Top-Pirates are <b>solely</b> based on the player's experience. Wealth, PvP-wins, etc. are not taken into account.</p>

		</div>
                
		</div>
	</div>

{include file='file:core/footer.tpl'}