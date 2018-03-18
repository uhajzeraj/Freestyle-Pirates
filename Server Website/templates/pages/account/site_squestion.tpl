{include file='file:core/header.tpl'}

	<!-- B. MAIN -->
	<div class="main">

		{include file='file:sidebars/left.tpl'}
 
		<!-- B.2 MAIN CONTENT -->
		<div class="main-content">
        
			<!-- Pagetitle -->
			<h1 class="pagetitle">Secruity Check</h1>

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
			<p>Please answer the Question correctly to change your Account Information</p>
				<div class="simpleform">
					<form method="get" action="{$script_url}">
						<input type="hidden" name="act" value="account" />
						<input type="hidden" name="sact" value="{$sact}" />
						<p><label for="check_question" class="left">Question:</label>
							{$info.squestion}</p>
						<p><label for="check_answer" class="left">Answer:</label>
							<input type="text" name="answer" id="answer" class="field" value="Enter Here Your Answer!" tabindex="1" /></p>
						<p><input type="submit" name="submit" id="submit" class="button" value="Send" tabindex="2" /></p>
					</form>
				</div>
			</div>

		</div>
                
		{include file='file:sidebars/right.tpl'}

	</div>

{include file='file:core/footer.tpl'}