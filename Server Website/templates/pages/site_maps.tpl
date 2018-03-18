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
			<h3 class="guideTitle">Maps</h3>


			<div class="guideContent"><p><br />

{if $maps neq false}
		<table class="normalTable" width="100%">
			<tr><th>Map Name</th><th>Map Opened</th><th>Portal Opened</th><th>Next Rounds</th></tr>
		{foreach item=map from=$maps}
			<tr>	
				<th>{$map.name}</th>
                <td>
					{if $map.isOpen}
						<font color="darkgreen">Yes</font><br /><i>Closing at : {$map.closingTime|date_format:"%D %H:%M:%S"}</i>
					{else}
					<font color="darkred">No</font>
					{/if}
				</td>
                <td>
					{if $map.portalOpen}
						<font color="darkgreen">Yes</font><br /><i>Closing at : {$map.portCloseTime|date_format:"%D %H:%M:%S"}</i>
					{else}
					<font color="darkred">No</font>
					{/if}
				</td>
				<td>
					{if count($map.sessions) >0}
						<ul>
							{foreach item=session from=$map.sessions}
								<li> {$session.mapOpening|date_format:"%e.%m, %H:%M:%S"} </li>
							{/foreach}
						</ul>
					{else}
						none
					{/if}
				</td>
			</tr>
		{/foreach}
		</table>
{else}
					<p>No News in archive.</p>
{/if}

				</p>
			</div>
			</div>
		</div>
	</div>

{include file='file:core/footer.tpl'}