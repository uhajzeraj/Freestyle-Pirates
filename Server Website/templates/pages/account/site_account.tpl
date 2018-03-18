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
		<h2 class="pageTitle"><img src="images/title/page_account.png" alt="Account" /></h2><br><br>
			<div class="mall clearfix">
				<div class="mallRecord">
					<h4 class="title">Account</h4>
					<div class="mallRecordMain">
{if count($message.messages) gt 0}
			<div class="{$message.type}">
				<ul>
			{foreach item=text from=$message.messages}
					<li>{$text}</li>
			{/foreach}
				</ul>
			</div>
{/if}
{if $user.is_logged_in}  
						<table width="100%" cellpadding="0" cellspacing="0" border="0" class="normalTable" align="center">
							<colgroup>
								<col width="30%" />
								<col width="70%" />
							</colgroup>
							<thead>
								<tr>
									<th colspan="2">Member Information</th>

								</tr>
							</thead>
							<tbody>
								<tr align="center">
									<td class="b" align="left">User Name:</td>
									<td align="left"><b>{$user.name}</b> {if $account.rdate gt 0} registred since <b>{$account.rdate}</b>{/if} {if $account.refer gt '' }, invited by <b>{$account.refer}</b>{/if}</td>
								</tr>
								<tr align="center">

									<td class="b" align="left">E-mail Address:</td>
									<td align="left">{$account.email}</td>
								</tr>
								<tr align="center">
									<td class="b" align="left">Balance:</td>
									<td align="left">{$user.pts}</td>
								</tr>
								<tr align="center">
									<td class="b" align="left">Last Login</td>
{if $account.last_login neq ""}
					<td align="left"><b>{$account.last_login|date_format:"%Y-%m-%d %H:%M:%S"}</b> from <b>{$account.last_login_ip}</b></td>
{else}
					<td align="left"><b>never</b></td>
{/if}
								</tr>
								<tr align="center">
									<td class="b" align="left">Last Logout:</td>
{if $account.last_logout neq ""}
					<td align="left"><b>{$account.last_logout|date_format:"%Y-%m-%d %H:%M:%S"}</b></td>
{else}
					<td align="left"><b>never</b></td>
{/if}
								</tr>
								<tr align="center">
									<td class="b" align="left">Time online:</td>
{if trim($account.time_online) neq ""}
					<td align="left"><b>{$account.time_online}</b></td>
{else}
					<td align="left"><b>never</b></td>
{/if}
								</tr>
								<tr align="center">
									<td class="b" align="left">GM Level:</td>
									<td align="left">{$account.gm}</td>
								</tr>
							</tbody>
						</table>
{/if}
					</div>
				</div>

			<div align="center">
			<br />
<script type="text/javascript"><!--
google_ad_client = "pub-7897939576388121";
/* 468x60, Erstellt 30.08.10 */
google_ad_slot = "9021590946";
google_ad_width = 468;
google_ad_height = 60;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></div>
				</div>
		</div>
		</div>
	</div>
    <div class="generalPop" id="popBox" style="display:none; z-index:501;">
        <a href="javascript:;" onclick="Box.hide();" title="Close" class="close">Close</a>
        <div class="mallPopMain" id="popBoxContent"></div>
    </div>
    <div id="popBoxMask" style="display:none; position:absolute; top:0; left:0; z-index:500; opacity: 0.6; filter:alpha(opacity=60); background-color:#000; overflow:hidden; cursor:pointer;"></div>

    <script type="text/javascript">
	{literal}
    var Box = {
         show: function(page) {
            var obj = $("#popBoxContent").html("Loading...");
            $("#popBox").show();
            $("#popBoxMask").show().click(function() {
                Box.hide();
            });
            Box.adjust();
            obj.load('{/literal}{$script_url}{literal}?act=account&sact='+page);
        },
        hide: function() {
            $("#popBox").hide();
            $("#popBoxMask").hide();
        },
        submit: function(page) {
            var form = $("#BoxForm");
            var data = {file:$(':files[name=upfile]', form).val(), question:$(':select[name=question]', form).val(), answer:$(':text[name=answer]', form).val()};
            var obj = $("#popBoxContent").html("Loading...");
            obj.load('{/literal}{$script_url}{literal}?act=account&sact='+page, data);
        },
        adjust: function() {
            var scrollLeft = document.documentElement.scrollLeft + document.body.scrollLeft;
            var scrollTop = document.documentElement.scrollTop + document.body.scrollTop;

            var left = (document.documentElement.clientWidth - $("#popBox").width()) / 2 + scrollLeft;
            var top = (document.documentElement.clientHeight - $("#popBox").height()) / 2 + scrollTop;
            
            $("#popBox").css("left", left).css("top", top);
            $("#popBoxMask")
                .width(document.documentElement.scrollWidth)
                .height(document.documentElement.scrollHeight);
        }
    };
    $(function() {
        $(window).scroll(function() {
            Box.adjust();
        });
        $(window).resize(function() {
            Box.adjust();
        });
    });
	{/literal}
    </script>
{include file='file:core/footer.tpl'}