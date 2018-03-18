{include file='file:core/header.tpl'}
<script type="text/javascript">
    function switchArtList(id, anchor) {ldelim}
        anchor = $(anchor).blur();
        anchor.parents("ul.updateNav").find("li[class != 'more'] > a").removeClass("current");
        anchor.addClass("current");
        $("#" + id + "List").show().siblings("ul.updateList").hide();
        return false;
    {rdelim}
    
    var slider;
    
    $(function() {ldelim}
        slider = {ldelim}
            wrapper: $("#sliderWrapper"),

            timer: null,
            cursor: 0,        
            positions: [],
            
            resetTimer: function() {ldelim}
                if (slider.positions.length < 3 ) {ldelim}
                    return;
                {rdelim}
                
                if (slider.timer) {ldelim}
                    clearInterval(slider.timer);
                {rdelim}
                slider.timer = setInterval(function() {ldelim}
                    $("#sliderNext").trigger("click");
                {rdelim}, 3000);
            {rdelim},
            stopTimer: function() {ldelim}
                if (slider.timer) {ldelim}
                    clearInterval(slider.timer);
                {rdelim}
            {rdelim}
        {rdelim};
        

        var totalWidth = 0;
        slider.wrapper.children("li").each(function(i) {ldelim}
            var width = $(this).width() + 12;
            
            if ( ! width) {ldelim}
                return false;
            {rdelim}

            slider.positions[i] = totalWidth;
            totalWidth += width;
        {rdelim});

        slider.wrapper.width(totalWidth).hover(function() {ldelim}
            slider.stopTimer();
        {rdelim}, function() {ldelim}
            slider.resetTimer();
        {rdelim});
        

        $("#sliderPrev").click(function(e) {ldelim}
            e.preventDefault();
            
            if (slider.cursor == 0) {ldelim}
                slider.cursor = slider.positions.length - 2;
            {rdelim} else {ldelim}
                slider.cursor -= 1;
            {rdelim}

            slider.wrapper.stop().animate({ldelim}marginLeft: -slider.positions[slider.cursor]+'px'{rdelim}, 500);
            slider.resetTimer();
        {rdelim}).hover(function() {ldelim}
            slider.stopTimer();
        {rdelim}, function() {ldelim}
            slider.resetTimer();
        {rdelim});

        $("#sliderNext").click(function(e) {ldelim}
            e.preventDefault();
            
            if (slider.cursor == slider.positions.length - 2) {ldelim}
                slider.cursor = 0;
            {rdelim} else {ldelim}
                slider.cursor += 1;
            {rdelim}
            slider.wrapper.stop().animate({ldelim}marginLeft: -slider.positions[slider.cursor]+'px'{rdelim}, 500);
            slider.resetTimer();
        {rdelim}).hover(function() {ldelim}
            slider.stopTimer();
        {rdelim}, function() {ldelim}
            slider.resetTimer();
        {rdelim});
        

        slider.resetTimer();
    {rdelim});
</script>
		{include file='file:sidebars/left.tpl'}
 
		<!-- B.2 MAIN CONTENT -->
			<!-- Pagetitle -->
			<div id="mainContent" class="clearfix">
				<div class="slideplayer">
					<div id="slideshow"></div>
					<script type="text/javascript">
						swfobject.embedSWF("{$base_url}/flash/swf/slideshow_main.swf", "slideshow", "468", "152", "9.0.0","{$base_url}/flash/swf/expressInstall.swf", {ldelim}source:"{$base_url}/flash/swf/0.xml"{rdelim}, {ldelim}menu:"false",wmode:"transparent"{rdelim}, {ldelim}id:"slideshow",name:"slideshow"{rdelim});
					</script>
				</div>
			<div class="update" id="artWarper">
				<ul class="updateNav">
                    <li class="s1"><a href="#" class="current" onclick="return switchArtList('news', this);">News</a></li>
					<li class="s3"><a href="#" onclick="return switchArtList('notice', this);">Notice</a></li>
					<li class="more"><a href="{$script_url}?act=news">MORE</a></li>
				</ul>
				<ul class="updateList" id="newsList">
					{foreach item=curnews from=$news}
						<li><span class="title"><a href="{$script_url}?act=newsview&amp;id={$curnews.news_id}">{$curnews.headline} </a>{if $curnews.date|date_format:"%W" eq $smarty.now|date_format:"%W" } <img src="images/new.gif" alt="New" />{/if}</span><span class="listRight">/{$curnews.date|date_format}/</span></li>
					{/foreach}
				</ul>
				<ul class="updateList" id="noticeList" style="display: none;">
					{foreach item=file from=$files}
						<li><span class="title"><a href="{$file.url}">{$file.name}</a></span><span class="listRight">/{$file.size}/</span></li>
					{/foreach}
				</ul>
				<ul class="updateList" id="othersList" style="display: none;">
				</ul>
			</div>
			<div class="slideGg">
				<div class="btn"><a href="#" class="prev" title="Previous" id="sliderPrev">Previous</a></div>
				<div class="list" style="overflow: hidden;">
					<ul style="width: 636px; margin-left: -212px;" id="sliderWrapper">
						<li><a href="{$script_url}?act=vote" title="Vote!"><img src="img/banner/121207874.jpg" height="80" width="200" alt="Vote for Credits" /></a></li>
						<li><a href="{$script_url}?act=ranking" title="Pirates Ranking!"><img src="img/banner/473343285.jpg" height="80" width="200" alt="Pirates Ranking" /></a></li>
						<li><a href="{$script_url}?act=shop&sact=mall" title="Item Mall!"><img src="img/banner/635899208.jpg" height="80" width="200" alt="Item Mall" /></a></li>
						<li><a href="{$script_url}?act=shop&sact=award" title="Award Center!"><img src="img/banner/635899280.jpg" height="80" width="200" alt="Award Center" /></a></li>
					</ul>
				</div>
				<div class="btn"><a href="#" class="next" title="Next" id="sliderNext">Next</a></div>
			</div>
		</div>
		
	{include file='file:sidebars/right.tpl'}
{include file='file:core/footer.tpl'}