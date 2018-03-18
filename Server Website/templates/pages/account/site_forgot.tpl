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
		<h2 class="pageTitle"><img src="images/title/page_password.png" alt="Forgot Password" /></h2>
		<div class="content">

{if $message.type neq "ok"}
				<p>If you've forgotten your login details, don't worry, they can be retrieved.<br />To start this process please enter your username below.</p>
{/if}
{if count($message.messages) > 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div><br>
{/if}
{if $message.type neq "ok"}
				<table width="70%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
					<thead>
						<tr>
							<th colspan="2">Retrieve Password</th>
						</tr>
					</thead>
					<tbody>
					<form method="post" action="{$script_url}?act=forgot">
						<input type="hidden" name="forgot" value="doit" />
					<tr>
						<td class="tdLabel">Username:</td>
							<td><input type="text" name="username" id="username" class="inputText" value="{$form_username}" tabindex="1" size="30"/></td>
					</tr><tr>
						<td class="tdLabel" style="border-right:none;">&nbsp;</td>
						<td><img src="{$script_url}?act=getcaptcha" alt="Captcha" style="margin-left:14px;" /></td>
					</tr><tr>
						<td class="tdLabel" style="border-right:none;">Code:</td>
							<td><input type="text" name="captcha" id="captcha" class="inputText" value="" tabindex="2" size="30"/></td>
					</tr><tr>
						<td class="tdLabel" style="border-right:none;">&nbsp;</td>
						<td><input type="submit" name="submit" id="submit" class="button" value="OK" tabindex="3" /></tr>
						</tr>
					</tbody>
				</table>
					</form>
				</div>              
{/if}
			</div>

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}