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
		<h2 class="pageTitle"><img src="images/title/page_news.png" alt="Manage Categories" /></h2>
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

				<table width="70%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
					<tr>
						<th scope="col" class="top">Name</th>
						<th scope="col" class="top" style="width:70px;">Action</th>
					</tr>
{if count($categories) gt 0}
			{foreach item=entry from=$categories}
					<tr>
						<td><a href="{$script_url}?act=admin&sact=categoryedit&id={$entry.id}">{$entry.category}</a></td>
						<td style="text-align:center"><a href="{$script_url}?act=admin&sact=categorydelete&id={$entry.id}"><img src="images/button/delete.png" alt="delete"></a></td>
					</tr>
			{/foreach}
{else}
					<tr>
						<td colspan="2">No categories found.</td>
					</tr>
{/if}
					<tr>
						<td colspan="2"><a href="{$script_url}?act=admin&sact=categoryadd">Add Category</a></td>
					</tr>
				</table>

			</div>

		</div>
                
		</div>

	</div>

{include file='file:core/footer.tpl'}