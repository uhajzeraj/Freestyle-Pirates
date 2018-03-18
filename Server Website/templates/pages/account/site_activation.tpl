{include file='file:core/header.tpl'}

	<!-- B. MAIN -->
	<div class="main">

		{include file='file:sidebars/left.tpl'}
 
		<!-- B.2 MAIN CONTENT -->
		<div class="main-content">
        
			<!-- Pagetitle -->
			<h1 class="pagetitle">Account-Activation</h1>

			<div class="column1-unit">
{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}
			<p>To send the activation e-mail to a different email, please input the email here!</p>
				<div class="simpleform">
					<form method="post" action="{$script_url}?act=resendmail">
						<input type="hidden" name="resend" value="doit" />
						<p><label for="acc_email" class="left">eMail:</label>
							<input type="text" name="acc_email" id="acc_email" class="field" value="{$form_email}" tabindex="1" /></p>
						<p><input type="submit" name="submit" id="submit" class="button" value="Send" tabindex="2" /></p>
					</form>
				</div>
			</div>

		</div>
                
		{include file='file:sidebars/right.tpl'}

	</div>

{include file='file:core/footer.tpl'}