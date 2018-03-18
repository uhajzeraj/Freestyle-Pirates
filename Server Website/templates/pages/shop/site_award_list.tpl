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
            <h2 class="pageTitle"><img src="{$base_url}images/title/page_award.png" alt="Award Center"></h2>
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
				<div class="mallTypeTitle"><img src="{$base_url}images/title_award_center.png" alt="Award Center"></div>
				<!--item mall main begin-->
				<div class="mallWrapper">
					<ul class="mallSortNav">
			{foreach item=category from=$categories}
                	<li><a href="{$script_url}?act=shop&sact=award&id={$category.id}">{$category.name}</a></li>
			{/foreach}
                    </ul>
					<div class="mallContent">
						<table width="100%" cellpadding="0" cellspacing="0" border="0" class="mallList">
							<colgroup span="4">
								<col width="20%">
								<col width="30%">
								<col width="15%">
								<col width="35%">
							</colgroup>
							<thead>
								<tr>
									<th>ICON</th>
									<th>ITEM NAME</th>
									<th>POINT</th>
									<th>OPERATION</th>
								</tr>
							</thead>
							<tbody>
{if count($package) gt 0}
			{foreach item=pack from=$package key=pos}
							    <tr>
									<td>
										{if count($pack.items) > 1}
											<img src="{$base_url}/img/icons/n0320.png">
										{else}
										{foreach item=item from=$pack.items}
											<img src="{$base_url}/img/icons/{$item.info.icon}.png">
										{/foreach}
										{/if}
									</td>
									<td>{$pack.name}<img src="{$base_url}images/btn_mall_detail.png" alt="Detail" class="btnDetail" style="cursor:pointer;" onclick="$('#info_{$pack.id}').slideDown();"></td>
									<td><span class="b">{$pack.price}</span></td>
									<td>
									    <a href="javascript:;" onclick="Purchase.show({$pack.id});"><img src="{$base_url}images/btn_mall_buy.png" alt="Buy Now"></a>
                                    </td>
								</tr>
								<tr>
									<td colspan="4" style="padding:0px;">
									<div id="info_{$pack.id}" style="display:none;width:100%;" >
										<b>Contains:</b><span onclick="$('#info_{$pack.id}').slideUp();" style="float:right;cursor:pointer;">X</span>
										{foreach item=item from=$pack.items}
											<ul>
												<li>
													{$item.amount}x {$item.info.name}<br/><small>{$item.info.description}</small>
												</li>
											</ul>
										{/foreach}
									</div>
									</td>
								</tr>
			{/foreach}
{else}
			<tr><td colspan="5">No Item(s) found ?!</td></tr>
{/if}
                            </tbody>
						</table>
					</div>
				</div>
				<!--item mall main end-->
			</div>
			<!--Content End-->
		</div>
	</div>
                
{include file='file:core/footer.tpl'}
			<div class="mallPop" id="popPurchase" style="z-index: 501; left: 520.5px; top: 502px; display: none; ">
				<a href="javascript:;" onclick="Purchase.hide();" title="Close" class="close">Close</a>
				<div class="mallPopMain" id="popPurchaseContent"></div>
			</div>
			<div id="popPurchaseMask" style="display: none; position: absolute; top: 0px; left: 0px; z-index: 500; opacity: 0.6; background-color: rgb(0, 0, 0); overflow-x: hidden; overflow-y: hidden; cursor: pointer; width: 1583px; height: 1358px; "></div>			<script type="text/javascript">
			{literal}
				var Purchase = {
					show: function(id) {
						var obj = $("#popPurchaseContent").html("Loading...");
						$("#popPurchase").show();
						$("#popPurchaseMask").show().click(function() {
							Purchase.hide();
						});
						Purchase.adjust();
						obj.load('{/literal}{$script_url}{literal}?act=purchase', {id: id,type:2});
					},
					hide: function() {
						$("#popPurchase").hide();
						$("#popPurchaseMask").hide();
					},
					submit: function() {
						var form = $("#purchaseForm");
						var data = {pack_id:$(':hidden[name=item_id]', form).val(), character:$(':select[name=characters]', form).val(), amount:$(':text[name=amount]', form).val(),type:2};
						var obj = $("#popPurchaseContent").html("Loading...");
						obj.load('{/literal}{$script_url}{literal}?act=purchase&sact=confirm', data);
					},
					adjust: function() {
						var scrollLeft = document.documentElement.scrollLeft + document.body.scrollLeft;
						var scrollTop = document.documentElement.scrollTop + document.body.scrollTop;

						var left = (document.documentElement.clientWidth - $("#popPurchase").width()) / 2 + scrollLeft;
						var top = (document.documentElement.clientHeight - $("#popPurchase").height()) / 2 + scrollTop;
						
						$("#popPurchase").css("left", left).css("top", top);
						$("#popPurchaseMask")
							.width(document.documentElement.scrollWidth)
							.height(document.documentElement.scrollHeight);
					},
					add2Cart: function(id) {
						$.post('cart.php?action=add', {item_id: id}, function(data) {
							if (data == 1) {
								alert('You have add this item to the cart!');
							} else {
								alert(data);
							}
						});
					}
				};
				$(function() {
					$(window).scroll(function() {
						Purchase.adjust();
					});
					$(window).resize(function() {
						Purchase.adjust();
					});
				});
			{/literal}
			</script>