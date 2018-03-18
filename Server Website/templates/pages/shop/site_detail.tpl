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
				<div class="mallAuction">
					<h3 class="mallAuctionTitle">Point(s) Auction</h3>
					<div class="mallAuctionContent clearfix">
						<h4 class="auctionTitle">{$auction.iteminfo.name}</h4>
						<div class="auctionPic">
							<img src="{$base_url}img/icons/{$auction.iteminfo.icon}.png">
							<a href="{$script_url}?act=auction"><img src="{$base_url}images/btn_mall_back.png" alt="Back" class="btnBack"></a>
						</div>
						<div class="auctionInfo">
							<form method="post" action="{$script_url}?act=auction&detail={$auction.id}">
								<div class="auctionElement clearfix">
									<label class="label">Item NO:</label>
									<div class="input">{$auction.id}</div>
								</div>
								<div class="auctionElement clearfix">
                                	<label class="label">Start from:</label>
								  <div class="input">{$auction.start_time|date_format:"%m-%d-%y %R"}</div>
								</div>
								<div class="auctionElement clearfix">
									<label class="label">End time:</label>
									<div class="input">{if $smarty.now < $auction.end_time}{$auction.end_time|date_format:"%m-%d-%y %R"}{else}<div id="showTime" style="color:#FF0000;"><strong> The auction for this item is over! </strong></div>{/if}</div>
								</div>
                                <div class="auctionElement clearfix">
									<label class="label">Starting bid:</label>
									<div class="input">{$auction.start_bid} Point(s)</div>
								</div>     
                                <div class="auctionElement clearfix">
									<label class="label">Current bid:</label>
									<div class="input">{$auction.last_bid} Point(s)</div>
								</div>                        
								<div class="auctionElement clearfix">
									<label class="label">History:</label>
									<div class="input">{$auction.bids|@count} Bids</div>
								</div>
								{if count($message.messages) > 0}
									<div id="{$message.type}">
										<ul>
										{foreach item=text from=$message.messages}
												<li>{$text}</li>
										{/foreach}
										</li>
									</div>
								{/if}
								{if $auction.given neq 1}
									<div id="countDownHidden" class="auctionElement" >
									{if $smarty.now < $auction.end_time}
										{if $user.id eq $auction.last_bid_id}
											<span class="b">You are the highest bidder</span>
										{else}
											<span class="b">Your maximum bid:</span>
											<div class="btn">
											<input type="text" size="10" class="inputText" style="margin-top:9px;" name="bid_price" id="bid_price" datatype="Integer" msg="Please input your maximum bid"> 
											<input type="image" src="{$base_url}images/btn_mall_place_bid.png" id="subtn">
											<span class="tip">(Enter <span class="textRed">{$auction.last_bid+1}</span> or more)</span>
											<input name="item_id" type="hidden" id="item_id" value="{$auction.id}">
											</div>
										{/if}
									{else}
										{if $user.id eq $auction.last_bid_id}
										<span class="b">
											You have won this auction!<br/>
										<input type="submit" name="obtain" value="Click to obtain the item!">
										</span>
										{/if}
									{/if}
									</div>
								{/if}
							</form>                            
					  </div>
 					</div>
				</div>
				<div class="mallAuctionFoot">
					<table width="100%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
						<colgroup>
							<col width="50%">
							<col width="20%">
							<col width="30%">
						</colgroup>
						<thead>
							<tr>
								<th colspan="3" class="thHead">History Record</th>
							</tr>
							<tr>
								<th>Bidder</th>
								<th>Bid Amount</th>
								<th>Bid Time</th>
							</tr>
						</thead>
						<tbody>
						{foreach item=bid from=$auction.bids}
                        	<tr align="center">
								<td>{$bid.name}</td>
								<td>{$bid.amount}</td>
								<td>{$bid.date|date_format:"%m-%d-%y %R"}</td>
							</tr>
						{/foreach}
						</tbody>
					</table>
				</div>
			</div>
			<!--Content End-->
		</div>
		</div>
	</div>
   
{include file='file:core/footer.tpl'}