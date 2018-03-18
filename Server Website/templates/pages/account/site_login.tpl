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
		<h2 class="pageTitle"><img src="images/title/page_login.png" alt="Login" /></h2>
		<div class="content">
				<div class="text">
					<p>Please enter correct information, if you do not have an Account <a href="{$script_url}?act=register"> Register Here ! </a></p>
				</div>
				
{if count($message.messages) > 0}
			<div class="{$message.type}">
				<ul>
			{foreach item=text from=$message.messages}
					<li>{$text}</li>
			{/foreach}
				</ul>
			</div><br />
{/if}

				<table width="70%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
					<thead>
						<tr>
							<th colspan="2">Login</th>
						</tr>
					</thead>
					<tbody>
				<form method="post" action="{$script_url}?act=login">
				<tr>
					<input type="hidden" name="login" value="doit" />
					<td class="tdLabel">Username:</td>
						<td><input type="text" name="username" id="username" class="inputText" value="{$form_username}" tabindex="1" size="30" /></td>
					</tr><tr>
					<td class="tdLabel">Password:</td>
						<td><input type="password" name="password" id="password" class="inputText" value="" tabindex="2" autocomplete="off" size="30" /></td>
					</tr><tr>
					<td class="tdLabel" style="border-right:none;">&nbsp;</td>
					<td style="border-left:none"><input type="submit" name="submit" id="submit" class="button" value="Login" tabindex="3" /></td>
					</tr>
					</tbody>
				</table>
				</form>
			</div>        
	</div>
	</div>
{include file='file:core/footer.tpl'}