<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<style type="text/css">
{literal}
a:link,a:visited { text-decoration: none; color: #003366 }
a:hover { text-decoration: underline }
body {
    background: #3097D1 url(default/bg.gif) repeat-x left top;
    scrollbar-base-color: #F8F8F8;
    scrollbar-arrow-color: #698CC3;
    font-size: 12px;
    background-color: #CCCCCC;
    font-family: Verdana, Arial, Helvetica, sans-serif;
    margin-top: 200px;
}

table { color: #000000; font-size: 12px }
textarea,input,object { color: #000000; font-weight: normal; background-color: #F8F8F8 }
select { font-size: 12px; color: #000000; font-weight: normal; background-color: #F8F8F8 }
blockquote { margin-left:20px;  margin-right:20px; border:#698CC3  dashed  1px; padding:5px; background-color:#FFFFFF}

.nav {  font-weight: bold }
.header { color: #FFFFFF; font-weight: bold; background-color: #333333}
.category { color: #000000; background-color: #EFEFEF }
.tableborder { border: 1px solid #999999; background-color: #666666; }
.singleborder { font-size: 0px; line-height: 1px; padding: 0px; background-color: #F8F8F8 }
.multi {  color: #003366; }
.bold { font-weight: bold }

.code { margin-left:20px;  margin-right:20px; padding:5px; background-color:#FFFFFF}
.style1 { font-size: 10px; text-align: right; }
{/literal}
</style>
</head>

<body background-color: #3097D1 text="#000000" leftmargin="10">

    <br />
    <table class="tableborder" cellspacing="0" cellpadding="0" border="0" width="460" align="center">
    <tr>
        <td>
            <table border="0" cellspacing="1" cellpadding="4" width="100%">
                <tr class="header">
                    <td>{$message.type|capitalize}</td>
                </tr>
                <tr>
                    <td {if $message.type eq 'error'}bgcolor="#AA0000"{else}bgcolor="#FFFFFF"{/if} align="center">
                        <table border="0" width="90%" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="100%" align="center">
									{foreach item=text from=$message.messages}
											<li>{$text}</li>
									{/foreach}
                                    <a href="{$backlink}">If this page appears for more than 5 seconds click here to reload</a>
                                    <br /><br />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    </table>
    <script type="text/javascript">
	{literal}
        setTimeout(function() {
            window.location="{/literal}{$backlink}{literal}";
        }, 5 * 1000);
	{/literal}
    </script>
</body>
</html>