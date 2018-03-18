	<!--main content begin-->
	<div id="wrapper" class="clearfix">
		<div id="sidebar">
			<div class="sideDownload">
				<div class="btn">
					<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="160" height="120">
						<param name="allowScriptAccess" value="always" />
						<param name="movie" value="flash/btn_download.swf" />
						<param name="quality" value="high" />
						<param name="wmode" value="transparent" />
						<embed src="flash/btn_download.swf" wmode="transparent" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="160" height="120"></embed>
					</object>
				</div>
			</div>
			<div class="memberArea">
				{if $user.is_logged_in}
				<ul class="memberInfo">
					<li><strong>User Name:</strong> {$user.name}</li>
					<li>Point(s):  {$user.info.point}</li>
					<li>Credit(s): {$user.info.credit}</li>
					<li><a href="{$script_url}?act=logout">Logout</a></li>
				</ul>
				{else}
				<ul>
					<li class="btn"><a href="{$script_url}?act=register"><img src="images/btn_register.png" alt="Register" onmouseover="this.src='images/btn_register_hover.png'" onmouseout="this.src='images/btn_register.png'" /></a></li>
					<li class="btn"><a href="{$script_url}?act=login"><img src="images/btn_login.png" alt="Login" onmouseover="this.src='images/btn_login_hover.png'" onmouseout="this.src='images/btn_login.png'" /></a></li>
					<li class="forgot"><a href="{$script_url}?act=forgot">Forgot Password?</a></li>
				</ul>
				{/if}
			</div>
			{if count($items) neq 0}
			<div class="mallNav">
				<ul>
					<li class="s1"><a href="{$script_url}?act=account">Account</a></li>
					<li class="s2"><a href="{$script_url}?act=buy">Buy Card</a></li>
					<li class="s4"><a href="{$script_url}?act=shop&sact=award">Item Mall</a></li>
					<li class="s5"><a href="{$script_url}?act=shop&sact=award">Award Center</a></li>
				</ul>
			</div>
			<div class="mallSideGg">
				<ul>
					<li><a href="/webim/client.php?locale=en" target="_blank" onclick="if(navigator.userAgent.toLowerCase().indexOf('opera') != -1 && window.event.preventDefault) window.event.preventDefault();this.newWindow = window.open('/webim/client.php?locale=en', 'webim', 'toolbar=0,scrollbars=0,location=0,status=1,menubar=0,width=640,height=480,resizable=1');this.newWindow.focus();this.newWindow.opener=window;return false;"><img src="/webim/button.php?i=mall_lc&amp;lang=en" alt="Live Support" /></a></li>
					<li><a href="http://www.facebook.com/pages/Pirates-Age-Online/245067504974" title="Become a fan NOW!"><img src="images/835831312.gif" width="180" height="80"></a></li>
				</ul>
			</div>	
			{else}
			<div class="sideQuick">
				<ul class="s1">
					
				</ul>
				<ul class="s2">
					<li><a href="{$script_url}?act=shop&sact=mall"><img src="images/ItemMall.jpg" alt="Item Mall" /></a></li>
					<li><a href="{$script_url}?act=shop&sact=award"><img src="images/AwardCenter.jpg" alt="Award Center" /></a></li>
					<li><a href="{$script_url}?act=donate"><img src="images/Donate.jpg" alt="Donate" /></a></li>
					<li><a href="{$script_url}?act=vote"><img src="images/Vote.jpg" alt="Vote" /></a></li>
				</ul>
			</div>
			<div class="sideCol">
				<h3 class="title"><img src="images/title_side_poll.png" alt="Information" class="titleImg" /></h3>
				<dl class="sidePoll bg">
					<dt> Join our server! </dt>
					<dd> Feel free to explore.</dd>
					<dd> You will not regret!</dd>
					{if $status eq true}
						Online
					{/if}
				</dl>
			</div>
			{/if}
		</div>
