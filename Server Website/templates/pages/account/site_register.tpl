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
		<h2 class="pageTitle"><img src="images/title/page_register.png" alt="Register" /></h2>
			<div class="content">
				<div class="text">
					<p>Before registering a new account please make sure you read our <a href="{$script_url}?act=rules">rules</a>!</p>
				</div>
				
{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div><br>
{/if}

{if $allow_registration eq true}

					<form method="post" action="{$script_url}?act=register" name="reg_form" id="reg_form" onsubmit="return checkform(this);" >
					<table width="90%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
						<colgroup>
							<col width="30%" />
							<col width="70%" />
						</colgroup>
					<thead>
						<tr>
							<th colspan="2">Register</th>
						</tr>
					</thead>
						<tbody>
						<tr>
							<input type="hidden" name="register" value="doit" />
							<td class="tdLabel">Username:</td>
							<td><input msgcode="1" errorcode="-1" type="text" name="reg_username" id="reg_username" class="inputText" value="{$form_username}" tabindex="1" size="30" onblur="return checkForm(this)" /></td>
						</tr>
						<tr>
							<td class="tdLabel">Password:</td>
							<td><input msgcode="1" errorcode="-1" type="password" name="reg_password" id="reg_password" class="inputText" value="" tabindex="2" autocomplete="off" size="30" /></td>
						</tr>
						<tr>
							<td class="tdLabel">Confirm Password:</td>
							<td><input msgcode="1" errorcode="-1" type="password" name="reg_password2" id="reg_password2" class="inputText" value="" tabindex="3" autocomplete="off" size="30" /></td>
						</tr>
						<tr>
							<td class="tdLabel">E-mail Address:</td>
							<td><input msgcode="1" errorcode="-1" type="text" name="reg_email" id="reg_email" class="inputText" value="{$form_email}" tabindex="4" size="40" /></td>
						</tr>
{if $show_captcha}
						<tr>
							<td class="tdLabel" style="border-right:none;">&nbsp;</td>
							<td><img src="{$script_url}?act=getcaptcha" alt="Captcha" style="margin-left:14px;" /></td>
						</tr>
						<tr>
							<td class="tdLabel" style="border-right:none;">Code:</td>
							<td><input type="text" name="reg_captcha" id="reg_captcha" class="inputText" value="" tabindex="5" size="30" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="checkbox" name="reg_rule" id="reg_rule" value="rules" tabindex="7"> <a href="{$script_url}?act=rules">I read the rules and accept them!</a></td>
						</tr>
{/if}
					</tbody>
				</table>
				<table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
					<tr>
						<td align="center" height="60">
							<input src="images/btn_register_create.png" name="submit" id="submit" type="image" value="Register" >
						</td>
					</tr>
				</table>
					</form>           
{/if}

{if $allow_registration eq true}

				<h3 class="guideTitle">Register Information</h3>
				<div class="guideContent"><p><br />
	
					* Usernames can be 5-20 chars long!<br>
					* Usernames can contain the following chars: a-z A-Z 0-9 ~!@#$%^&*()_+|-=\[]:";&lt;%gt;?,./<br>
					* Passwords can be 5-20 chars long!<br>
					* Passwords can contain the following chars: a-z A-Z 0-9 ~!@#$%^&*()_+|-=\[]:";&lt;%gt;?,./<br>
{if $allow_dupe_email}
					* registering multiple accounts using the same eMail-address is <b>allowed</b>.</br>
{else}
					* registering multiple accounts using the same eMail-address is <b>forbidden</b>.</p>
{/if}
{/if}
		</div>
		</div>
       </div>
	</div>
{include file='file:core/footer.tpl'}