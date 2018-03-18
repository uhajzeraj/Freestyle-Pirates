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
		<h2 class="pageTitle"><img src="images/title/page_guild.png" alt="Your Guilds" /></h2>
		<div class="content">

{if count($guilds) gt 0}
			<table width="70%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
				<tr>
					<th scope="col" class="top">Name</th>
					<th scope="col" class="top">Motto</th>
					<th scope="col" class="top" style="width:70px;">Members</th>
					<th scope="col" class="top" style="width:70px;">Applicants</th>
				</tr>
			{foreach item=guild from=$guilds}
				<tr>
					<td><a href="{$script_url}?act=account&sact=guildview&id={$guild.id}">{$guild.name}</a></td>
					<td>{$guild.motto}</td>
					<td>{$guild.members}</td>
					<td>{$guild.applicants}</td>
				</tr>
			{/foreach}
			</table>
			<p></p>
			<p>Click on the guild-name to edit that guild.</p>
{else}
			<p>You're not leader of any guild!</p>
{/if}

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}