<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>塘朗小学欢迎您</title>
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>res/client/css/css.css" />
</head>

<body>
	<div id="warp">
		<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
			codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
			width="1006" height="638" title="flash">
			<param name="movie" value="<%=basePath%>res/client/flash/welcome.swf" />
			<param name="quality" value="high" />
			<param name="vmode" value="transparent" />
			<embed src="<%=basePath%>res/client/flash/welcome.swf" width="1006"
				height="638" quality="high"
				pluginspage="http://www.macromedia.com/go/getflashplayer"
				type="application/x-shockwave-flash" vmode="transparent"></embed>
		</object>
	</div>
</body>
</html>
