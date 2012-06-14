<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/tags.inc"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>满天星文学社注册</title>
<link rel="stylesheet" type="text/css" href="${basePath }res/client/css/css.css" />
<style type="text/css">
	body{ background:url(${basePath }res/client/css/img/wx_bg.jpg) repeat;}
</style>
</head>

<body>
<div id="wx_wrap">
<div class="wx_bg">
	<div id="wx_head">
		<div class="flash">
			
			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="767" height="198">
              <param name="movie" value="flash/start.swf" />
              <param name="quality" value="high" />
              <param name="vmode" value="transparent" />
              <embed src="flash/start.swf" width="767" height="198" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" vmode="transparent"></embed>
		  </object>
		</div>
		<div class="wx_logo"><a href=""><img src="css/img/wx_logo.png" /></a><img src="css/img/wx_logo_b.png" /></div>
		<div class="wx_nav">
			<span>用户名：</span><input name="" type="text" />
			<span>密码：</span><input type="password" />
			<input name="" type="button" value="登陆" />
			<span>快速搜索：</span><input name="" type="text" /><input value="搜索" type="button"/>
			<span><a href="">注册博客</a></span>
		</div>
	</div>
	<div id="wx_main">
		<div class="art_title"><span>用户注册</span></div>
		<div class="regform wx_form">
			<form action="" method="post">
				<p>
					<span class="pspan1 fl">用户名：</span>
					<input type="text" id="xingming" class="fl" />
					<span class="pspan2">由英文字母、数字和下划线或邮箱构成</span>
					<div class="clear"></div>
				</p>
				<p>
					<span class="pspan1 fl">密码：</span>
					<input type="text" id="xingming" class="fl" />
					<span class="pspan2">请保证密码不易被猜中（至少6位）</span>
					<div class="clear"></div>
				</p>
				<p>
					<span class="pspan1 fl">确认密码：</span>
					<input type="text" id="xingming" class="fl" />
					<span class="pspan2">与上面的密码不一致，新重新输入</span>
					<div class="clear"></div>
				</p>
				<p class="queren2">
					<input type="submit" id="sure" value="确认" />
				</p>
			</form>
		</div>
	</div>
	<div id="wx_foot">
		<p>版权所有 Copyright? 2002-2004 南山区塘朗小学 联系电话：0755-86007697 QQ:324651(黑马）</p>
		<p>备案序号:粤ICP备05084369号 本站技术支持：深圳市智翔信息技术有限公司<img src="css/img/foot-icon.gif" /></p>	
	</div>	
</div>
</div>
</body>
</html>
