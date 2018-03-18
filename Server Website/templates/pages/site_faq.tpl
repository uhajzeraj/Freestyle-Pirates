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
		<h2 class="pageTitle"><img src="images/title/page_contact.png" alt="Contact Us!" /></h2>
			<div class="content faq">
                				<dl>
					<dt>Q: How to change camera angle?</dt>
					<dd class="clearfix">
						<span class="label">A:</span>
						<span class="faqAnswer">Roll the scroll, you can change the distance; click right button and hold, then move the mouse, you can change the angle.</span>
					</dd>
				</dl>
                				<dl>
					<dt>Q: Is it normal that when changing maps there appears black screen?</dt>
					<dd class="clearfix">
						<span class="label">A:</span>
						<span class="faqAnswer">Yes, due to connection lag, this is normal, expecially for Vista Users.</span>
					</dd>
				</dl>
                				<dl>
					<dt>Q: What's the usage of the "security code"?</dt>
					<dd class="clearfix">
						<span class="label">A:</span>
						<span class="faqAnswer">When you enter game for the first time, you will be asked to enter a more than 6 digitals of "security code". The security code is made by the game developer for the purpose of safeguard the contents in the players' accounts. So far, it is used for deleting characters and cannot be modified or found back afterward, please keep it in mind.<br>
If you forget your security code, Click here to clear your security code, then login game to reset again.</span>
					</dd>
				</dl>
                				<dl>
					<dt>Q: How to login game?</dt>
					<dd class="clearfix">
						<span class="label">A:</span>
						<span class="faqAnswer">Find the game icon on your desktop and click on it.</span>
					</dd>
				</dl>
                				<dl>
					<dt>Q: How to install game?</dt>
					<dd class="clearfix">
						<span class="label">A:</span>
						<span class="faqAnswer">Once you've finished download, you can click on the game client to finish the installation.</span>
					</dd>
				</dl>
                				<dl>
					<dt>Q: How to download game?</dt>
					<dd class="clearfix">
						<span class="label">A:</span>
						<span class="faqAnswer">You can click here to visit the download page, for more details, view instructions in the page.</span>
					</dd>
				</dl>
                				<dl>
					<dt>Q: How to activate game?</dt>
					<dd class="clearfix">
						<span class="label">A:</span>
						<span class="faqAnswer">The last step for your registration is to activate game, normally it will activate automatically.</span>
					</dd>
				</dl>
                				<dl>
					<dt>Q: Where to register IGG passport?</dt>
					<dd class="clearfix">
						<span class="label">A:</span>
						<span class="faqAnswer">You can click here to take the registration.</span>
					</dd>
				</dl>
                				<dl>
					<dt>Q: How to enter game?</dt>
					<dd class="clearfix">
						<span class="label">A:</span>
						<span class="faqAnswer">There are five steps to take, register IGG passport-&gt; activate game-&gt; download game client-&gt; install game-&gt; login game.</span>
					</dd>
				</dl>
			</div>
			</div>
		</div>
	</div>

{include file='file:core/footer.tpl'}