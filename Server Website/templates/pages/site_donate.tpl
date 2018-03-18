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
			<h3 class="guideTitle">Buy Points</h3>


			<div class="guideContent">
			<p><br />
				{$donate}
			</p>
			<b><font size="2">Buying points is a form of supporting that ensures you that the server will stay online for a long time. For now you can only pay by <font color="blue">PayPal</font>.</font></b>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="GESMFT8FK52DS">
<table>
<tr><td><input type="hidden" name="on0" value="Amount">Amount</td></tr><tr><td><select name="os0">
	<option value="1 Point">1 Point$1.00 USD</option>
	<option value="5 Points">5 Points$5.00 USD</option>
	<option value="10 Points">10 Points$10.00 USD</option>
	<option value="20 Points">20 Points$20.00 USD</option>
	<option value="30 Points">30 Points$30.00 USD</option>
	<option value="50 Points">50 Points$50.00 USD</option>
	<option value="100 Points">100 Points$100.00 USD</option>
	<option value="200 Points">200 Points$200.00 USD</option>
	<option value="300 Points">300 Points$300.00 USD</option>
</select> </td></tr>
</table>
<input type="hidden" name="currency_code" value="USD">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_buynow_LG.gif" border="0" name="submit" alt="PayPal — The safer, easier way to pay online.">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>










			<br>
			<b><font size="2" color="blue">Why to buy points?</font></b>
			<br><b><font size="2">Buying points covers the cost of services that are needed to keep the server online. Depending which product you choose, you recieve that amount of <font color="blue">Item Mall Point</font> which can be exchanged for various items. Plus, if you buy a higher amount of Points, you will recieve <font color="blue">Bonus Points</font>. Exactly, for making a purchase of <font color="blue">50 points or more</font> you receive <font color="blue">50% bonus</font>. </br></b></font>
			<br>
			<br>
			<b><font size="2" color="blue">After you buy points</font></b>
			<br><b><font size="2">Send us an email to <font color="blue">freestylepirates@hotmail.com</font> containing these informations:
			<br><b><font size="2" color="blue">1. Account name</br></b></font>
			<b><font size="2" color="blue">2. Product choosed</b></font>
			<br><b><font size="2" color="blue">3. Transaction ID</br></b></font>
			<b><font size="2" color="blue">4. Email address</b></font>
			<br>
			<br>
			<b><font size="2" color="blue">I haven't recieved my points!</b></font>
			<br><b><font size="2">Don't worry! Points will be added within <font color="blue">24 hours</font> after you purchase! But, if you don't get your points within 24 hours, write us another email!</br></b></font>
		
			
			

			</div>
			</div>
		</div>
	</div>

{include file='file:core/footer.tpl'}