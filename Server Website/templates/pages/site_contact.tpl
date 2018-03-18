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
			<h3 class="guideTitle"> Contact</h3>


			<div class="guideContent">
			<p><br />
				{$contact}
			</p>
			<b><font size="2">If you have any problem, question or something else that you would like to know feel free to contact us in</font></b>
			<b><font color="blue" size="2">freestylepirates@hotmail.com</font></b>
			<b><font size="2">and we shall write you back.</font></b>
			<br>
			<br>
			<b><font size="2" color="blue">Terms of Agreement:</font></b>
			<br><b><font size="2">Spamming is not allowed</br></b></font>
			<b><font size="2">Only english language messages are accepted</b></font>
			<br><b><font size="2">Do not ask for staff positions</br></b></font>
			<b><font size="2">Ask questions that have to do with the game</b></font>
			<br>
			<br>
			<b><font size="2">You should recieve a reply within <font color="blue">24 hours</font>.Don't be shy to <font color="blue">ask again</font> if you haven't recieve you answer.If you don't obey the rules, you will be <font color="blue">punished</font>!Thank you for your question.</b></font>
			</div>
			</div>
		</div>
	</div>

{include file='file:core/footer.tpl'}