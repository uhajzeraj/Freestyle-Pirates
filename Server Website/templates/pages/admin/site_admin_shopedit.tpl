{include file='file:core/header.tpl'}

                        <div class="art-Post">
                            <div class="art-Post-tl"></div>
                            <div class="art-Post-tr"></div>
                            <div class="art-Post-bl"></div>
                            <div class="art-Post-br"></div>
                            <div class="art-Post-tc"></div>
                            <div class="art-Post-bc"></div>
                            <div class="art-Post-cl"></div>
                            <div class="art-Post-cr"></div>
                            <div class="art-Post-cc"></div>
                            <div class="art-Post-body">
				<div class="art-Post-inner">
				    <div class="art-PostMetadataHeader">
				        <h2 class="art-PostHeaderIcon-wrapper" style="font-size:14px;padding-left:5px;font-weight:bold;">
				            <span class="art-PostHeader">Add Package</span>
				        </h2>
				    </div>
				    <div class="art-PostContent">

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
							<table border="1" cellpadding="0" cellspacing="0">
								<tbody>
									<tr>
										<td colspan="3" style="height:20px;">
											<p align="center"><strong>Name: <input type="text" name="pack_name" value="{$pack.name}"></strong>
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
											<center>
												<textarea name="pack_items" cols="14" rows="10">{foreach item=item name=items from=$pack.itemid}{$item.amount}x{$item.itemid}{if $smarty.foreach.items.last neq true},{/if}{/foreach}
											</textarea>
											</center>
										</td>
										<td colspan="2">
											<center>
											<textarea name="pack_desc" cols="35" rows="10">{$pack.description}</textarea>
											</center>
										</td>
									</tr>
									<tr>
										<td colspan="3" style="height:20px;">
											<p align="center">
												<strong>
													Price:<input type="text" name="pack_price" value="{$pack.price}">							
													<select name="pack_type">
															<option value="1"{if $pack_type eq 1}selected{/if}>Item Mall</option>
															<option value="2"{if $pack_type eq 2}selected{/if}>Award Center</option>
													</select>
												</strong>
											</p>
										</td>
									</tr>
								</tbody>
							</table>
							<center><input type="submit" name="add" value="Done"></center>
						</form>				    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>
                        
{include file='file:core/footer.tpl'}