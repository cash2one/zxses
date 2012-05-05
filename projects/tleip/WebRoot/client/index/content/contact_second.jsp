<%@ page language="java" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<a href="<%=basePath%>client/itembig${classId}/itemsmall${typeId}.html"><img src="<%=basePath%>res/client/css/img/contact.gif" /></a>
