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
            <h2 class="pageTitle"><img src="{$base_url}images/title/page_mall.png" alt="Item Mall"></h2>
			<!--Content Begin-->
			<div class="mall clearfix">
				<div class="mallStep">
					<dl>
						<dt>How To Purchase</dt>
						<dd>1. Buy Card</dd>
						<dd>2. Choose Item</dd>
						<dd>3. Confirm Choose</dd>
						<dd>4. Assign Item</dd>
						<dd>5. Confirm Assignment</dd>
					</dl>
				</div>
				<!--item mall main begin-->
				<div class="mallAuction">
					<h3 class="mallAuctionTitle">Points Auction</h3>
					<div class="auctionTab">
						<ul>
							<li><a href="{$script_url}?act=auction&state=0" {if $state eq 0}class="current"{/if}>Ongoing</a></li>
							<li><a href="{$script_url}?act=auction&state=1" {if $state eq 1}class="current"{/if}>Finished</a></li>
						</ul>
					</div>
					<div class="mallAuctionContent">
						<table width="100%" cellpadding="0" cellspacing="0" border="0" class="mallList">
							<colgroup span="4">
								<col width="20%">
								<col width="30%">
								<col width="30%">
								<col width="20%">
							</colgroup>
							<thead>
								<tr>
									<th>ICON</th>
									<th>ITEM NAME</th>
									<th><strong>Current bid(History)</strong></th>
									<th>End Time</th>
								</tr>
							</thead>
							<tbody>
							{foreach item=auction from=$auctions}
								{if $auction.given eq $state}
									{if $smarty.now < $auction.end_time}
										<tr>
											<td><img src="{$base_url}img/icons/{$auction.iteminfo.icon}.png"><br>
												No.{$auction.id}
											</td>
											<td>{$auction.iteminfo.name} <a href="{$script_url}?act=auction&detail={$auction.id}"><img src="{$base_url}images/btn_mall_detail.png" alt="Detail" class="btnDetail"></a></td>
											<td><span class="b">{$auction.last_bid}<br>({$auction.bids|@count} bids)</span></td>
											<td>{$auction.end_time|date_format:"%m-%d-%y %R"}<br></td>
										</tr>
									{else}
										{if $user.id eq $auction.last_bid_id}
										<tr>
											<td><img src="{$base_url}img/icons/{$auction.iteminfo.icon}.png"><br>
												No.{$auction.id}
											</td>
											<td>{$auction.iteminfo.name} <a href="{$script_url}?act=auction&detail={$auction.id}"><img src="{$base_url}images/btn_mall_detail.png" alt="Detail" class="btnDetail"></a></td>
											<td><span class="b">{$auction.last_bid}<br>({$auction.bids|@count} bids)</span></td>
											<td>{if $state eq 0}Please obtian the item!{else} {$auction.end_time|date_format:"%m-%d-%y %R"} <br /><font color="#ff0000">( end )</font>{/if}</td>
										</tr>
										{/if}
									{/if}
								{/if}
							{/foreach}
							</tbody>
						</table>
					</div>
				</div>
				<!--item mall main end-->
				<div class="mallAuctionFoot">
					<p>If your bid is the highest, your points will be deducted   automatically, and if the following bidder offers a higher bid than you, the   deducted points will be returned to you immediately.<br>
					  Once the Auctio ended you can obtain the item in the detail view of the item!<br>
					</p>
				</div>
			</div>
			<!--Content End-->
		</div>
		</div>
	</div>



   
{include file='file:core/footer.tpl'}