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
				            <span class="art-PostHeader">Manage Item Mall</span>
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

{if count($categories) gt 0}
			<a href="{$script_url}?act=admin&sact=shop&action=add">Add Package</a>-
			<a href="{$script_url}?act=admin&sact=shop&action=cats">Edit Categories</a>
			<a href="{$script_url}?act=admin&sact=shop&action=cats_add">Add Categories</a>
			<table>
				<tbody>
			{foreach item=category from=$categories key=pos}
					<tr>
						<td>
							<b><a href="{$script_url}?act=admin&sact=shop&action=cats_edit&id={$category.id}">{$category.name}</a></b>
						</td>                                                                              
						<td>
							<a href="{$script_url}?act=admin&sact=shop&action=cats_delte&id={$category.id}">Delete</a>
						</td>
					</tr>
			{/foreach}
				</tbody>
			</table>
{else}
			<br /><br/>
			<p>No Item(s) found ?!</p>
{/if}
			<a href="{$script_url}?act=admin&sact=shop&action=add">Add Package</a>-
			<a href="{$script_url}?act=admin&sact=shop&action=cats">Edit Categories</a>
			<a href="{$script_url}?act=admin&sact=shop&action=cats_add">Add Categories</a>
		    </div>
				    <div class="cleared"></div>
				</div>
                            </div>
                        </div>
                        
{include file='file:core/footer.tpl'}