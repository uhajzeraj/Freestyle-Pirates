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
		<h2 class="pageTitle"><img src="images/title/page_character.png" alt="Character Detail" /></h2>
		<div class="content"><br>

			<h3 class="guideTitle">{$character.name}</h3>
{literal}
		<style>

			/* DEFINITION LIST PROGRESS BAR */
			
			dl, dt, dd{margin:0;padding:0;}
			
			dd{
				width:216px;
				height:41px;
				background:url({/literal}{$base_url}{literal}img/bg_bar.gif) no-repeat 0 0;
				position:relative;
			}
			dd span{
				position:absolute;
				display:block;
				width:200px;
				height:25px;
				background:url({/literal}{$base_url}{literal}img/bar.gif) no-repeat 0 0;
				top:8px;
				left:8px;
				overflow:hidden;
				text-indent:-8000px;
			}
			dd em{
				position:absolute;
				display:block;
				width:200px;
				height:25px;
				background:url({/literal}{$base_url}{literal}img/bg_cover.gif) repeat-x;
				top:0;
			}


		/* SINGLE PROGRESS BAR */
		
		.progressBar{
			width:216px;
			height:41px;
			background:url({/literal}{$base_url}{literal}img/bg_bar.gif) no-repeat 0 0;
			position:relative;
		}

		.progressBar span{
			position:absolute;
			display:block;
			width:200px;
			height:25px;
			background:url({/literal}{$base_url}{literal}img/bar.gif) no-repeat 0 0;
			top:8px;
			left:8px;
			overflow:hidden;
			text-indent:-8000px;
		}

		.progressBar em{
			position:absolute;
			display:block;
			width:200px;
			height:25px;
			background:url({/literal}{$base_url}{literal}img/bg_cover.gif) repeat-x 0 0;
			top:0;
		}

	</style>
{/literal}

			<!-- Content unit - Two columns -->
			<div class="column2-unit-left">
				<dl>
					<dt>STR ({$character.str}):</dt>
					<dd>
						<span><em style="left:{$character.str*2}px"></em></span>
					</dd>
					<dt>CON ({$character.con}):</dt>
					<dd>
						<span><em style="left:{$character.con*2}px"></em></span>
					</dd>
					<dt>ACC ({$character.acc}):</dt>
					<dd>
						<span><em style="left:{$character.acc*2}px"></em></span>
					</dd>
				</dl>
			</div>
			<div class="column2-unit-right">
				<dl>
					<dt>SPR ({$character.spr}):</dt>
					<dd>
						<span><em style="left:{$character.spr*2}px"></em></span>
					</dd>
					<dt>AGI ({$character.agi}):</dt>
					<dd>
						<span><em style="left:{$character.agi*2}px"></em></span>
					</dd>
{if 1}
					<dt>LUK ({$character.luk}):</dt>
					<dd>
						<span><em style="left:{$character.luk*2}px"></em></span>
					</dd>
{/if}
				</dl>
			</div><br>

			<table width="90%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center" >
				<tr>
					<th class="top" style="width:140px">Char-Type</td>
					<td>{$character.char}</td>
				</tr>
				<tr>
					<th class="top">Class</td>
					<td>{$character.job}</td>
				</tr>
				<tr>
					<th class="top">Level</td>
					<td>{$character.level} ({$character.exp} Exp)</td>
				</tr>
				<tr>
					<th class="top">Gold</td>
					<td>{$character.gold}</td>
				</tr>
				<tr>
					<th class="top">Guild</td>
					<td>{$character.guild}</td>
				</tr>
				<tr>
					<th class="top">Attribute-Points</td>
					<td>{$character.ap}</td>
				</tr>
				<tr>
					<th class="top">Skill-Points</td>
					<td>{$character.tp}</td>
				</tr>
			</table>
			<div align="center">
			<br />
<script type="text/javascript"><!--
google_ad_client = "pub-7897939576388121";
/* 468x60, Erstellt 30.08.10 */
google_ad_slot = "7292363924";
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