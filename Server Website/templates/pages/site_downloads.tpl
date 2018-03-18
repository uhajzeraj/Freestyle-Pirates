{include file='file:core/header.tpl'}

	<!-- B. MAIN -->
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
			<h2 class="pageTitle"><img src="images/title/page_download.png" alt="Download" /></h2>
			<ul class="pageNav clearfix">
			{foreach item=category from=$categories}
				<li><a href="{$script_url}?act=downloads&cid={$category.category_id}">{$category.category}</a></li>
			{/foreach}
			</ul>
			<div class="content">
		<!-- B.2 MAIN CONTENT -->
 				<div class="gameDownload">       
			<!-- Pagetitle -->

{if count($message.messages) > 0}
			<div class="{$message.type}">
				<ul>
			{foreach item=text from=$message.messages}
					<li>{$text}</li>
			{/foreach}
				</ul>
			</div>
{/if}

{if count($files) neq 0}
			{foreach item=file from=$files}
				<div class="clientIntro" style="height:100px;">
					<dl class="basicInfo" style="height:80px;" >
						<dd>
							<strong>File Name:</strong> {$file.name}<br />
							<strong>Size:</strong> <strong class="textRed">{$file.size}</strong><br />
							<strong>Description:</strong> {$file.description}
						</dd>
					</dl>
					<dl class="downloader">

						<dt><strong>Download :</strong> <span class="textRed">{$file.name}</span></dt>
						<dd>
							
							<div class="btn"><a href="{$file.url}"><img src="images/btn_free_download.png" alt="Free Download" /></a></div>

						</dd>
					</dl>
				</div><br>
			{/foreach}
					<table width="100%" cellspacing="0" cellpadding="0" border="0" class="normalTable">
						<colgroup>
							<col width="15%" />
							<col width="35%" />
							<col width="15%" />
							<col width="35%" />
						</colgroup>
						<thead>
							<tr>
								<th colspan="2">Minimum System Requirement:</th>
								<th colspan="2">Recommended System:</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="tdLabel">O/S:</td>
								<td>WIN 98/ME/NT/2000/XP/Vista</td>
								<td class="tdLabel">O/S:</td>
								<td>Windows 2000/XP/Vista</td>
							</tr>
							<tr>
								<td class="tdLabel">CPU:</td>
								<td>P3-800 MHz </td>
								<td class="tdLabel">CPU:</td>
								<td>P4-2.4 GHz or above</td>
							</tr>
							<tr>
								<td class="tdLabel">Memory:</td>
								<td>256MB</td>
								<td class="tdLabel">Memory:</td>
								<td>512MB or more</td>
							</tr>
							<tr>
								<td class="tdLabel">Hard Disk:</td>
								<td>2.0 GB</td>
								<td class="tdLabel">Hard Disk:</td>
								<td>3.0GB or more</td>
							</tr>
							<tr>
								<td class="tdLabel">Video Card:</td>
								<td>16 MB 3D Accelerated Graphic Card</td>
								<td class="tdLabel">Video Card:</td>
								<td>ATI 9200/Nvidia FX5200 or better</td>

							</tr>
						</tbody>
					</table>

{/if}
{if $webim_found}
					<div class="text">
						<p>If you have any other problems, please click our 24/7 LiveSupport, our customer service will provide you with instant help.</p>
						<p class="centerfix"><a href="/webim/client.php?locale=en" target="_blank" onclick="if(navigator.userAgent.toLowerCase().indexOf('opera') != -1 && window.event.preventDefault) window.event.preventDefault();this.newWindow = window.open('/webim/client.php?locale=en', 'webim', 'toolbar=0,scrollbars=0,location=0,status=1,menubar=0,width=640,height=480,resizable=1');this.newWindow.focus();this.newWindow.opener=window;return false;"><img src="images/lc_online.jpg" alt="Live Support" /></a></p>
					</div>
{/if}
		</div>
        </div> 
	</div>
	</div>

{include file='file:core/footer.tpl'}