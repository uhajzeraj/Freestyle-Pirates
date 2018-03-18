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
		<h2 class="pageTitle"><img src="images/title/page_mail.png" alt="Change eMail!" /></h2>
		<div class="content">
			<p>Please fill out the form below to change your email-addressd!</p>

			<div class="column1-unit">

{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div><br>
{/if}
				<table width="70%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
					<thead>
						<tr>
							<th colspan="2">Change your eMail Adress</th>
						</tr>
					</thead>
					<tbody>
					<form method="post" action="{$script_url}">
						<input type="hidden" name="act" value="account" />
						<input type="hidden" name="sact" value="changemail" />
					<tr>
						<td class="tdLabel">New eMail:</td>
							<td><input type="text" name="email" id="email" class="inputText" value="{$form_email}" tabindex="1" size="45" /></td>
					</tr><tr>
							<td class="tdLabel" style="border-right:none;">&nbsp;</td>
						<td><img src="{$script_url}?act=getcaptcha" alt="Captcha" style="margin-left:14px;" /></td>
					</tr><tr>
						<td class="tdLabel" style="border-right:none;">Code:</td>
							<td><input type="text" name="captcha" id="captcha" class="inputText" value="" tabindex="2" size="30"/></td>
						</tr><tr>
					<td class="tdLabel" style="border-right:none;">&nbsp;</td>
						<td><input type="submit" name="submit" id="submit" class="button" value="OK" tabindex="3" /></td>
						</tr>
					</tbody>
				</table>
					</form>
				</div>              
			</div>

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}