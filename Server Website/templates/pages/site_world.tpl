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
			<h2 class="pageTitle"><img src="../themes/images/title/page_screenshots.png" alt="Screenshots" />Map of {$map.name}</h2>
			<ul class="pageNav clearfix">
					<li> <a href="{$script_url}?act=world&map=ascaron">Ascaron</a></li>
					<li> <a href="{$script_url}?act=world&map=deepblue">Deep Blue</a></li>
					<li> <a href="{$script_url}?act=world&map=magicocean">Magic Ocean</a></li>
			</ul>

			<div class="content">
				<div class="bigWorldList clearfix">
					<dl>
						<dt><img id="map" src="{$base_url}img/map/{$map.file}" width="470" height="470" border="0" usemap="#map">
					<map name="map">
						{foreach item=zone from=$zones}
						  <area shape="{$zone.type}" coords="{$zone.coords}" href="{$zone.url}" alt="{$zone.caption}" title="{$zone.caption}" >
						{/foreach}
					</map></dt>
					</dl>
				</div>
				<div class="WorldList clearfix" style="margin-left:117px" >
					<dl>
					<dt><img id="mapdefm" src="{$base_url}img/map/{$map.mini}" width="235" height="235" border="0" usemap="#mapdefm">
					<map name="mapdefm">
						{foreach item=zone from=$minizones}
							<area shape="{$zone.type}" coords="{$zone.coords}" href="{$zone.url}" alt="{$zone.caption}" title="{$zone.caption}">
						{/foreach}
					</map></dt>
					</dl>
				</div>
			</div>
		</div>
	</div>

{include file='file:core/footer.tpl'}