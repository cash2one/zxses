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
			.wrap{
				border-bottom: 1px solid #2095A6;
			    border-left: 1px solid #2095A6;
			    border-right: 1px solid #2095A6;
			    border-top: 1px solid #2095A6;
			    clear: left;
			    font-size: 12px;
			    margin: 0 auto;
			    padding-bottom: 30px;
			    padding-top: 10px;
			}
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
			.allwrap{
				border: 1px solid #2095A6;
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
				<div id="right" class="fr">
					<div class="art_title">
						<span>在线留言版</span>
					</div>
					<div class="wrap">
						<div>
							<table width="100%" border="0" align="center" >
								<tr>
									<td align="center" valign="top">
										<a href="${basePath }front/messagemanage.do?method=queryMessage"><img
												src="${basePath }res/client/images/message/write.gif" border="0"></img> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="${basePath }front/messagemanage.do?method=queryMessage"><img
												src="${basePath }res/client/images/message/read.gif" border="0"></img> </a>
									</td>
								</tr>
							</table>
						</div>
						<div style="height: 10px;"></div>
						<div align="center">
							<form name="addMessageForm" id="addMessageForm" action="addMessage.do" method="post" onsubmit="return doValidate('addMessageForm');">
			  					<table border="0" cellspacing="0" cellpadding="0" width="95%">
					  				<tr>
					    				<td width="16%" align=right style="border-left: 1px solid #2095A6;border-top: 1px solid #2095A6;">
					    					留言内容：<br/>
					    					<font color=red>（<span id="wordsNumber">200</span>字以内）</font>
					    				</td>
					    				<td width="84%"  style="border-left: 1px solid #2095A6;border-top: 1px solid #2095A6;border-right: 1px solid #2095A6;padding: 1px">
					    					<textarea name="content" rows="7" cols="66" style="overflow:auto;width: 99%"></textarea>
					    					<div style="color:red"><html:errors property="password"/></div> 
					   					</td>
					 				</tr>
					 				<tr>
									    <td width="16%" align="right" style="border-left: 1px solid #2095A6;border-top: 1px solid #2095A6;">请选择表情：</td>
									    <td align="left" style="border-left: 1px solid #2095A6;border-top: 1px solid #2095A6;border-right: 1px solid #2095A6;padding: 1px">
											<input type="radio" value="1" name="face" checked="checked"/><img border=0 src="${basePath }res/client/images/message/face/face1.gif"/> 
											<input type="radio" value="2" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face2.gif"/>
											<input type="radio" value="3" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face3.gif"/>
											<input type="radio" value="4" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face4.gif"/>
											<input type="radio" value="5" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face5.gif"/>
											<input type="radio" value="6" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face6.gif"/> 
											<input type="radio" value="7" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face7.gif"/>
											<input type="radio" value="8" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face8.gif"/>
											<input type="radio" value="9" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face9.gif"/>
											<input type="radio" value="10" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face10.gif"/>
											<b/>
											<input type="radio" value="11" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face11.gif"/> 
											<input type="radio" value="12" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face12.gif"/>
											<input type="radio" value="13" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face13.gif"/>
											<input type="radio" value="14" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face14.gif"/>
											<input type="radio" value="15" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face15.gif"/>
											<input type="radio" value="16" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face16.gif"/> 
											<input type="radio" value="17" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face17.gif"/>
											<input type="radio" value="18" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face18.gif"/>
											<input type="radio" value="19" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face19.gif"/>
											<input type="radio" value="20" name="face"/><img border=0 src="${basePath }res/client/images/message/face/face20.gif"/>
									    </td>
					  				</tr>
					  				<tr>
									    <td width="16%" align=right style="border-left: 1px solid #2095A6;border-top: 1px solid #2095A6;">请选择头像：</td>
									    <td align="left" style="border-left: 1px solid #2095A6;border-top: 1px solid #2095A6;border-right: 1px solid #2095A6;">
											<input type="radio" value="1" name="pic" checked="checked"/><img border=0 src="${basePath }res/client/images/message/face/pic1.gif" width="60"/>
											<input type="radio" value="2" name="pic"/><img border=0 src="${basePath }res/client/images/message/face/pic2.gif" width="60"/>
											<input type="radio" value="3" name="pic"/><img border=0 src="${basePath }res/client/images/message/face/pic3.gif" width="60"/>
											<input type="radio" value="4" name="pic"/><img border=0 src="${basePath }res/client/images/message/face/pic4.gif" width="60"/>
											<input type="radio" value="5" name="pic"/><img border=0 src="${basePath }res/client/images/message/face/pic5.gif" width="60"/>
											<br/>
											<input type="radio" value="6" name="pic"/><img border=0 src="${basePath }res/client/images/message/face/pic6.gif" width="60"/>
											<input type="radio" value="7" name="pic"/><img border=0 src="${basePath }res/client/images/message/face/pic7.gif" width="60"/>
											<input type="radio" value="8" name="pic"/><img border=0 src="${basePath }res/client/images/message/face/pic8.gif" width="60"/>
											<input type="radio" value="9" name="pic"/><img border=0 src="${basePath }res/client/images/message/face/pic9.gif" width="60"/>
											<input type="radio" value="10" name="pic"/><img border=0 src="${basePath }res/client/images/message/face/pic10.gif" width="60"/>
									    </td>
					 				</tr>
					 				<tr>
					    				<td colspan="2" align="center" style="border: 1px solid #2095A6;">
					    					<input type="submit" value="提交留言" onclick="return validateSubmit();"/> 
					     					<input type="reset" value="重新填写"/>
					     				</td>
					  				</tr>
			  					</table>
		  					</form>
						</div>
					</div>
					<br />
					</div>
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