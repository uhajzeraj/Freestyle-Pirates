{include file='file:core/header.tpl'}

	<!-- B. MAIN -->
	<div class="main">

		{include file='file:sidebars/left.tpl'}
 
		<!-- B.2 MAIN CONTENT -->
		<div class="main-content">
        
			<!-- Pagetitle -->
			<h1 class="pagetitle">Online Players</h1>
			<table>
			<tr>
				<th scope="col" class="top" width="20">#</th>
				<th scope="col" class="top" width="50%">Player</th>
				<th scope="col" class="top" width="50">Level</th>
				<th scope="col" class="top">Guild</th>
				<th scope="col" class="top">Char/Job</th>
			</tr>
{if count($players) gt 0}
			{foreach item=player from=$players key=pos}
				<tr>
					<td>{$pos}</td>
					<td><b>{$player.name}</b><span style="float:right;">{$player.account}</span><br><small>{$player.map}({$player.position})({$player.ip})</small></td>
					<td>{$player.level}</td>
					<td>
						{if $player.guild neq ""}
							{$player.guild}
						{else}
							-none-
						{/if}
					</td>
					<td>{$player.char}<br />{$player.job}</td>
				</tr>
			{/foreach}
{else}
				<tr>
					<td colspan="5">No players found!?</td>
				</tr>
{/if}
			</table>

			<p></p>
			<p><b>Attention</b>: The Top-Pirates are <b>solely</b> based on the player's experience. Wealth, PvP-wins, etc. are not taken into account.</p>

		</div>
                
		{include file='file:sidebars/right.tpl'}

	</div>

{include file='file:core/footer.tpl'}