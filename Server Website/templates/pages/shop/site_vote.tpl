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
			<h3 class="guideTitle">Vote for Credits</h3>


			<div class="guideContent"><p><br />
{if count($message.messages) > 0}
					<div class="{$message.type}">
						<ul>
			{foreach item=text from=$message.messages}
							<li>{$text}</li>
			{/foreach}
						</ul>
					</div>
{/if}
{if count($votes) gt 0}
					<form action="{$script_url}?act=vote" method="post">
					<p>
					<select name="vote_id" style="width:200px;height:25px;">
			{foreach item=vote from=$votes key=pos}
						<option value="{$vote.id}">{$vote.name}</option>
			{/foreach}
					</select><br/>
						<input type="submit" value="Vote" name="vote" style="width:200px;height:30px;">
					</p>
					</form>
{else}
			<p>No Votes are available</p>
{/if}
			</p>
			</div>
			</div>
		</div>
	</div>

{include file='file:core/footer.tpl'}