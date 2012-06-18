<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/tags.inc"%>

<div id="wx_head">
		<div class="flash">
			<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="767" height="198">
              <param name="movie" value="${basePath }res/client/flash/start.swf" />
              <param name="quality" value="high" />
              <param name="vmode" value="transparent" />
              <embed src="${basePath }res/client/flash/start.swf" width="767" height="198" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" vmode="transparent"></embed>
		  </object>
		</div>
		<div class="wx_logo"><a href=""><img src="${basePath }res/client/css/img/wx_logo.png" /></a><img src="${basePath }res/client/css/img/wx_logo_b.png" /></div>
		<div class="wx_nav">
			<div style="display: inline; visibility: hidden;">
				<span>用户名：</span><input name="" type="text"/>
				<span>密码：</span><input type="password"/>
				<input name="" type="button" value="登陆" />
			</div>
			<span>快速搜索：</span><input name="" type="text" /><input value="搜索" type="button"/>
			<span><a href="${bathPath }signup">注册</a></span>
		</div>
	</div>
