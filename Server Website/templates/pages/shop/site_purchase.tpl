
{if count($message) > 0}
	<div style="padding-top:50px; text-align:center;">
		<strong style="font-size:14px;">{$message.text}</strong>
		<div class="btn">{$message.buttons}</div>
	</div>
{else}
	<h4 class="title">Please choose the character to assign</h4>
	<form id="purchaseForm">
        <input type="hidden" name="item_id" value="{$pack.id}">
        <table width="100%" cellspacing="0" cellpadding="0" border="0" class="table">
            <thead>
                <tr>
                    <th>Character</th>
                    <th>Package</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
						<select name="characters">
						{foreach item=character from=$characters}
                            <option value="{$character.id}">{$character.name}</option>
						{/foreach}
						</select>
                    </td>
                    <td>{$pack.name}</td>
					<input type="hidden" class="inputText" size="1" style="text-align:center;" name="amount" value="1">
                </tr>
            </tbody>
        </table>
    </form>
	<div class="btn"><input type="button" value="Confirm" onclick="Purchase.submit();">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="Cancel" onclick="Purchase.hide();"></div>
{/if}