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
		<h2 class="pageTitle"><img src="images/title/page_guild.png" alt="View Guild {$guild.guild_name}" /></h2>
		<div class="content">


{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}

				<h2>Guild-Members</h2>
				<table width="70%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
					<tr>
						<th scope="col" class="top">Name</th>
						<th scope="col" class="top" style="width:40px;">Level</th>
						<th scope="col" class="top" style="width:85px;">Char/Job</th>
						<th scope="col" class="top" style="width:45px;">Status</th>
						<th scope="col" class="top" style="width:90px;">Action</th>
					</tr>
{if count($members) gt 0}
	{foreach item=member from=$members}
					<tr>
						<td>{$member.name}</a></td>
						<td>{$member.level}</td>
						<td>{$member.char}<br />{$member.job}</td>
						<td>
						{if $member.online}
							<span style="color:#090;">online</span>
						{else}
							<span style="color:#900;">offline</span>
						{/if}
						</td>
						<td>
						{if $member.online}
							&nbsp;
						{else}
							<a href="{$script_url}?act=account&sact=guildkick&id={$member.id}&gid={$guild.guild_id}" class="confirm">kick</a>
						{/if}
						</td>
					</tr>
	{/foreach}
{else}
					<tr>
						<td colspan="5">This guild has no members!?</a></td>
					</tr>
{/if}
				</table>
				
				<h2>Guild-Applicants</h2>
				<table width="90%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
					<tr>
						<th scope="col" class="top">Name</th>
						<th scope="col" class="top" style="width:40px;">Level</th>
						<th scope="col" class="top" style="width:85px;">Char/Job</th>
						<th scope="col" class="top" style="width:45px;">Status</th>
						<th scope="col" class="top" style="width:90px;">Action</th>
					</tr>
{if count($applicants) gt 0}
	{foreach item=member from=$applicants}
					<tr>
						<td>{$member.name}</a></td>
						<td>{$member.level}</td>
						<td>{$member.char}<br />{$member.job}</td>
						<td>
						{if $member.online}
							<span style="color:#090;">online</span>
						{else}
							<span style="color:#900;">offline</span>
						{/if}
						</td>
						<td>
						{if $member.online}
							&nbsp;
						{else}
							<a href="{$script_url}?act=account&sact=guildapprove&id={$member.id}&gid={$guild.guild_id}" class="confirm">approve</a><br />
							<a href="{$script_url}?act=account&sact=guilddecline&id={$member.id}&gid={$guild.guild_id}" class="confirm">decline</a>
						{/if}
						</td>
					</tr>
	{/foreach}
{else}
					<tr>
						<td colspan="5">This guild has no applicants.</a></td>
					</tr>
{/if}
				</table>

			</div>

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}