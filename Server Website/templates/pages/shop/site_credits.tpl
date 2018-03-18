{include file='file:core/header.tpl'}
<script language="javascript">
{literal}
  			function ShowChaInfo(id){
				var selector = $(id).val();
				$('.ChaInfo').hide();
				if($('.ChaInfo').is(':hidden')){
					$('#'+selector).show ();
				}
			}
{/literal}
</script>

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
			<h3 class="guideTitle">Vote for Credits</h3>


			<div class="guideContent"><p><br />
{if count($message.messages) > 0}
					<div class="{$message.type}">
						<ul>
			{foreach item=text from=$message.messages}
							<li>{$text}</li>
			{/foreach}
						</ul>
					</div>
{/if}
{if $user.is_logged_in}  
					<p> Please select a character that has already passed level 41 and is done with his 2nd Job Advancement!</p>
					<form action="{$script_url}?act=credits" method="post">
						<div style="width:250px; margin:10px auto; line-height:2em; text-align:center;">
							<select name="char_select" id="char_select" class="combo" onchange="ShowChaInfo(this);">
					{if count($characters) gt 0}
								<option> == Choose your Character ==</option>

						{foreach item=char from=$characters key=pos}
								<option value="{$char.id}">{$char.name}</option>
						{/foreach}
					{else}
								<option> No character found </option>
					{/if}
							</select>
							<input type="submit" name="exchange" id="exchange" value="Exchange" tabindex="2" />
						</div>
						<table width="80%" align="center" cellpadding="1" cellspacing="1" border="1" class="normalTable">
							<colgroup span="4">
								<col width="40%" />
								<col width="30%" />
								<col width="30%" />
							</colgroup>
						{foreach item=char from=$characters key=pos}
							<tr style="display:none;" class="ChaInfo" id="{$char.id}">
								<td width="170">Name:<b id="{$char.id}">{$char.name}</b></td>
								<td width="150">Reputation:<b id="{$char.id}">{$char.rep}</b></td>
								<td width="140">Credit:<b id="{$char.id}">{$char.credits}</b></td>
							</tr>
						{/foreach}
						</table>
					</form>
{/if}
			</p>
			</div>
			</div>
		</div>
	</div>

{include file='file:core/footer.tpl'}