<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/commons/tags.inc"%>
<%@ include file="/inc/include.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>深圳市南山区塘朗小学-在线留言板</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="深圳,南山,塘朗,小学" />
		<meta http-equiv="description" content="深圳市南山区塘朗小学" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>res/client/css/css.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>res/client/css/skin.css" />
		<script language="javascript" type="text/javascript"
			src="<%=basePath%>res/client/js/js_whol.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>res/client/js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>res/client/js/jquery.jcarousel.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>res/client/js/util.js"></script>
		<%@ include file="/inc/resources.jsp"%>
		<script type="text/javascript" src="${basePath}tools/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="${basePath}client/index/content/login_reg/jsfiles/userRegInf.js"></script>
		<style>
			/*简单修改符合塘朗网站的功能*/
			.userInfo{
				border: 1px solid #2095A6;
			}
			.postdate{
			    border-right: 1px solid #2095A6;
			    border-top: 1px solid #2095A6;
			}
			.content{
				border-bottom: 1px solid #2095A6;
    			border-right: 1px solid #2095A6;
    			border-top: 1px solid #2095A6;
			}
		</style>
	</head>
	<body>
		<div id="warp">
			<!--head-->
			<div class="header">
				<div id="warp">
					<div id="head">
						<bean:include id="queryMenu"
							page="/client/newsClient.do?method=queryMenu" />
						<bean:write name="queryMenu" filter="false" />
						<div style="text-align: center;">
						<img align="middle" src="<%=basePath%>res/client/images/second_list.jpg" width="970" height="204"/>
						</div>
					</div>
				</div>
			</div>
			<!--end-->
			<!--web-->
			<div id="web">
				<div class="page_line">
					首页&gt;&gt;在线留言
				</div>
				<div id="left" class="fl">
					<!-- 左列 -->
					<ul>
					<%--
					<li><a href="">教师文萃</a>
						<ul>
							<li><a href="">班主任工作的探索</a></li>
							<li><a href="">班主任工作的探索</a></li>
							<li><a href="">班主任工作的探索</a></li>
						</ul>
					</li>
					<li><a href="">最新图片</a></li>
					--%>
					</ul>
					<div class="contact">
						<img src="<%=basePath%>res/client/css/img/contact.gif" />
					</div>
					<div class="message">
						<a href="" class="textbg">校长信箱</a>	
						<a href="">留言请进</a>	
					</div>
					<%--
					<bean:include id="queryLeft"
						page="/client/newsClient.do?method=queryLeft&classId=${classId}" />
					<bean:write name="queryLeft" filter="false" />
					--%>
				</div>
				
				<html:form action="front/messagemanage.do?method=queryMessage"
					method="post">
				<div id="right" class="fr">
					<div class="art_title">
						<span>在线留言版-发表留言</span>
					</div>
					<div class="panelInclude">
						<table width="760" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF"  class="grayline">
			  				<tr>
			  					<td>
			  						
			  					</td>
			  				</tr>
			  			</table>
					</div>
					<br />
					</div>
					</html:form>
				</div>
				<div class="clear"></div>
			</div>
			<!--end-->

			<!--foot-->
			<div class="footer">
				<bean:include id="queryFootInfo"
					page="/client/newsClient.do?method=queryFootInfo" />
				<bean:write name="queryFootInfo" filter="false" />
			</div>
			<!--end-->
			<!--xiaoxun-->
			<div id=sidenav style="POSITION: absolute; top: 100px; right: 0;">
				<img src="<%=basePath%>res/client/images/xiaoxun.gif" />
			</div>
	</body>
</html>