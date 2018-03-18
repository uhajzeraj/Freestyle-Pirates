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
		<h2 class="pageTitle"><img src="images/title/page_cha.png" alt="Characters" /></h2>
		<div class="content"><br><br>
{if count($characters) gt 0}
			{foreach item=character from=$characters}
			<table width="100%" class="normalTable">
				<tr>
					<td rowspan="3" width="76"><a href="{$script_url}?act=account&sact=chardetail&id={$character.id}"><img src="{$base_url}img/chars/{$character.picture}" style="border:0" /></a></td>
					<th scope="col" colspan="2"><a href="{$script_url}?act=account&sact=chardetail&id={$character.id}">{$character.name}</a></th>
				</tr>
				<tr>
					<td>Lv {$character.level}</td>
					<td>{$character.job}</td>
				</tr>
				<tr>
					<td>{$character.gold} Gold</td>
					<td>AP/TP left: {$character.ap} - {$character.tp}</td>
				</tr>
			</table><br>
			{/foreach}
			<p></p>
			<div align="center">
			<p>Click on the picture or name to see detailed informations on that char.</p>
{else}
			<p>No characters found!?</p>
{/if}

		</div>
 <div align="center">
			<br />
<script type="text/javascript"><!--
google_ad_client = "pub-7897939576388121";
/* TOP II PKOSITE */
google_ad_slot = "4581519285";
google_ad_width = 468;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></div>
				</div>             
		</div>

	</div>

{include file='file:core/footer.tpl'}