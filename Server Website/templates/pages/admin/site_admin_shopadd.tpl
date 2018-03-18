{include file='file:core/header.tpl'}
	<style>
		{literal}
		.validateTips { border: 1px solid transparent; padding: 0.3em; }
		{/literal}
	</style>
		<script>
		{literal}
			function checkRegexp( o, regexp, n ) {
				if ( !( regexp.test( o.val() ) ) ) {
					o.addClass( "ui-state-error" );
					$('.validateTips').html(n);
					return false;
				} else {
					return true;
				}
			}
				function addItem () {
					$( "#dialog-confirm" ).dialog({
						resizable: false,
						modal: true,
						position: 'center',
						buttons: {
							"Add": function() {
									var bValid = true;
									$( [] ).add( '#add_id' ).add( '#add_amount' ).removeClass( "ui-state-error" );
									bValid = bValid && checkRegexp( $('#add_amount'), /^([0-9])+$/, "Only NUMBERS allowed!" );
									bValid = bValid && checkRegexp( $('#add_id'), /^([0-9])+$/, "Only NUMBERS allowed!" );
									if ( bValid ) {
										var new_val = $('#pack_items').val();
										if($('#pack_items').val() != '') {
											new_val += ','
										}
										new_val += $('#add_amount').val()+':'+$('#add_id').val();
										$('#pack_items').attr('value',new_val);
										$('#items_in_pack').append("<strong>"+$('#add_amount').val()+"x "+$('#add_id').val()+"</strong><br/>");
										$( this ).dialog( "close" );
									}
							},
							Cancel: function() {
								$( this ).dialog( "close" );
							}
						}
					});
				}
		{/literal}
		</script>
		{include file='file:sidebars/left.tpl'}
		<div id="dialog-confirm" title="Add Item" style="display:none;">
			Enter the Amount and Item Id you want to add!
			<p class="validateTips">All form fields are required.</p>
			<input type="text" name="add_amount" id="add_amount" value="Amount" class="text ui-widget-content ui-corner-all" size="10" />
			<input type="text" name="add_id" id="add_id" value="ID" class="text ui-widget-content ui-corner-all" size="37"/>
		</div>
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
		<h2 class="pageTitle"><img src="images/title/page_mall.png" alt="Account" /></h2>
			<div class="mallSearch clearfix">
                <form method="post" action="{$script_url}?act=admin&sact=account" onsubmit="{literal}if ($.trim(this.keyword.value) == '') { alert('Please enter a keyword to search!'); $(this.keyword).focus(); return false; }{/literal}">
                    <input type="text" class="schInput" name="keyword"><input type="image" src="{$base_url}images/btn_mall_search.png" class="btn">
                </form>
            </div>
			<div class="mall clearfix">
				<div class="mallRecord">
					<ul class="mallSortNav" style="height:10px;">
						<li><a href="{$script_url}?act=admin&sact=rules">Edit Rules</a></li>
						<li><a href="{$script_url}?act=admin&sact=news">Edit News</a></li>
						<li><a href="{$script_url}?act=admin&sact=authors">Edit Authors</a></li>
						<li><a href="{$script_url}?act=admin&sact=ncategories">Edit Categories</a></li>
						<li><a href="{$script_url}?act=admin&sact=downloads">Edit Downloads</a></li>
						<li class="current"><a href="{$script_url}?act=admin&sact=shop">Mall Pannel</a></li>
                    </ul>
					<h4 class="title">Add Package</h4>
					<div class="mallRecordMain" style="text-align:center;">
{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}

			<div class="guideContentMenu">
				<ul>
					<li><a href="{$script_url}?act=admin&sact=shop&action=add">Add Package</a></li>
					<!--<li><a href="{$script_url}?act=admin&sact=shop&action=add2">Make Package</a></li>-->
					<li><a href="{$script_url}?act=admin&sact=shop&type=1">Manage Item Mall</a></li>
					<li><a href="{$script_url}?act=admin&sact=shop&type=2">Manage Award Center</a></li>
				</ul>
			</div><br/>
					<p>Here you can manage your Item Mall. At Adding Items you must write Amount:ItemId, every item sperated by a ",". Example:<b>1:192,1:85</b> would give 1x item id 192 & 1x item id 85 or <b>1:192</b> gives only 1x 192!</p>

{if count($message.messages) gt 0}
				<div class="{$message.type}">
					<ul>
				{foreach item=text from=$message.messages}
						<li>{$text}</li>
				{/foreach}
					</ul>
				</div>
{/if}


						<form action="{$script_url}?act=admin&sact=shop&action=add" method="post">
							<table width="80%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center" style="padding:10px;">
								<tbody>
									<tr>
										<td colspan="3" style="height:20px;">
											<p align="center"><strong>Name: <input type="text" name="pack_name" value=""></strong>
												<select name="pack_cat">
												{foreach item=cat from=$categories}
													<option value="{$cat.id}">{$cat.name}</option>
												{/foreach}
												</select>
											</p>
										</td>
									</tr>
									<tr>
										<td>
											<div id="items_in_pack">
											</div>
											<center>
												<input type="hidden" name="pack_items" value="" id="pack_items">
												<button onClick="addItem();return false;">+ Add Item</button>
												<button onClick="$('#pack_items').attr('value','');$('#items_in_pack').html('');return false;">Clear All</button>
											</center>
										</td>
										<td colspan="2">
											<center>
											<textarea name="pack_desc" cols="35" rows="10">Description ...</textarea>
											</center>
										</td>
									</tr>
									<tr>
										<td colspan="3" style="height:20px;">
											<p align="center">
												VIP: 							
													<select name="pack_vip">
														<option value="0">0</option>
														<option value="1">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
													</select>
												<strong>
													Price:<input type="text" name="pack_price" value="10">							
													<select name="pack_type">
															<option value="1">Item Mall</option>
															<option value="2">Award Center</option>
													</select>
												</strong>
											</p>
										</td>
									</tr>
								</tbody>
							</table>
							<center><input type="submit" name="add" value="Done" class="button" style="float:none"></center><br/><br/>
						</form>		
		</div>
		</div>
	</div>
</div>
</div>


{include file='file:core/footer.tpl'}