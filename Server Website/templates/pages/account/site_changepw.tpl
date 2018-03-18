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
		<h2 class="pageTitle"><img src="images/title/page_password.png" alt="Change Password" /></h2>
		<div class="content">
		
			<p>Please fill out the form below to change your password!</p>

{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}
				<table width="70%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
					<thead>
						<tr>
							<th colspan="2">Change Password</th>
						</tr>
					</thead>
					<tbody>
						<form method="post" action="{$script_url}">
							<input type="hidden" name="act" value="account" />
							<input type="hidden" name="sact" value="changepw" />
						<tr>
							<td class="tdLabel">Current Password:</td>
							<td><input type="password" name="pw_current" id="pw_current" class="inputText" value="" tabindex="1" size="30" /></td>
						</tr><tr>
							<td class="tdLabel">Password:</td>
							<td><input type="password" name="pw_password" id="pw_password" class="inputText" value="" tabindex="2" size="30"/></td>
						</tr><tr>
							<td class="tdLabel">Repeat Password:</td>
							<td><input type="password" name="pw_password2" id="pw_password2" class="inputText" value="" tabindex="3" size="30" /></td>
						</tr><tr>
							<td class="tdLabel" style="border-right:none;">&nbsp;</td>
							<td><img src="{$script_url}?act=getcaptcha" alt="Captcha" style="margin-left:14px;" /></td>
						</tr><tr>
							<td class="tdLabel" style="border-right:none;">Code:</td>
							<td><input type="text" name="pw_captcha" id="pw_captcha" class="inputText" value="" tabindex="5" size="30" /></td>
						</tr><tr>
							<td class="tdLabel" style="border-right:none;">&nbsp;</td>
							<td><input type="submit" name="submit" id="submit" class="button" value="OK" tabindex="6" /></td>
						</tr>
					</tbody>
				</table>
					</form>
				<h3 class="guideTitle">Password Information</h3>
				<div class="guideContent"><p><br />
					* Passwords can be 5-20 chars long!<br />
					* Passwords can contain the following chars: a-z A-Z 0-9 ~!@#$%^&*()_+|-=\[]:";&lt;&gt;?,./
				</div>

		</div>
         </div>       
		</div>

	</div>

{include file='file:core/footer.tpl'}