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
		<title>深圳市南山区塘朗小学-${itemBig.className }</title>
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
			src="<%=basePath%>res/client/js/jquery-1.4.3.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>res/client/js/jquery.jcarousel.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>res/client/js/util.js"></script>
		<%@ include file="/inc/resources.jsp"%>
		<script type="text/javascript" src="${basePath}tools/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="${basePath}client/index/content/login_reg/jsfiles/userRegInf.js"></script>
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
					首页&gt;&gt;用户注册
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
					<div>
						<bean:include id="queryContact"
							page="/client/newsClient.do?method=queryContact" />
						<bean:write name="queryContact" filter="false" />
					</div>
					<%--
					<bean:include id="queryLeft"
						page="/client/newsClient.do?method=queryLeft&classId=${classId}" />
					<bean:write name="queryLeft" filter="false" />
					--%>
				</div>
				<div id="right" class="fr">
					<div class="art_title">
						<span>用户注册</span>
					</div>
					<form name="userReg" id="userReg" method="post" action="${basePath}front/login.do"
						onsubmit="javascript:return checkSubmit();">
					<input type="hidden" name="method" value="userReg"/>
					<!-- 记录用户名是否已使用,js验证使用 -->
					<input type="hidden" id="userAccountUsed" value="false"/>
					<div class="">
						<div>
							<table width="100%" border="0" align="center">
								<tr>
									<td colspan="3" style=" height:40px;"
										valign="bottom">
										<span id="lblError" style="color:Red;"></span>
									</td>
								</tr>
								<tr>
									<td colspan="3" style=" height:40px;"
										valign="bottom">
										<table width="100%" border="0" align="center" class="panelInclude">
											<tr>
												<td align="right" valign="bottom" height="30" width="25%">
													<span class="dot">*</span>
													<span id="txtUserAccount">用户名：</span>
												</td>
												<td valign="bottom" align="left"  height="30" style="padding-left: 10px;"  width="30%">
													<input id="userAccount" name="userAccount" type="text" maxlength="20" width="60"/>
												</td>
												<td valign="bottom" align="left" height="30" width="45%">
													<span class="red1" id="userAccount-hint">提示：由英文字母、数字和下划线或邮箱构成</span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom" height="30">
													<span class="dot">* </span>
													<span id="txtUserName">真实姓名：</span>
												</td>
												<td valign="bottom" align="left" height="30" style="padding-left: 10px;">
													<input id="userName" name="userName" type="text" maxlength="30" width="60"/>
												</td>
												<td valign="bottom" align="left" height="30">
													<span class="red1" id="userName-hint"></span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom" height="30">
													<span class="dot">* </span>
													<span id="txtPassword">密码：</span>
												</td>
												<td valign="bottom" align="left" height="30" style="padding-left: 10px;">
													<input id="password" name="password" type="password" maxlength="30" width="60"/>
												</td>
												<td valign="bottom" align="left" height="30">
													<span class="red1" id="password-hint"></span>
													<div id="userpwd_strength"
														style="display:none;padding:0px;bgcolor:#999999;line-height:10px;"
														class="h">
														<p id="strength_L">
															低
														</p>
														<p id="strength_M">
															中
														</p>
														<p id="strength_H">
															高
														</p>
													</div>
													<span>提示：请保证密码不易被猜中(至少6位)</span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom" height="30">
													<span class="dot">* </span>
													<span id="txtRePassword">确认密码：</span>
												</td>
												<td valign="bottom" align="left" height="30" style="padding-left: 10px;">
													<input id="rePassword" name="rePassword" type="password" maxlength="30" width="60"/>
												</td>
												<td valign="bottom" align="left" height="30">
													<span class="red1" id="rePassword-hint"></span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom" height="30">
													<span>性别：</span>
												</td>
												<td valign="bottom" align="left" height="30" style="padding-left: 10px;">
													<select id="sex" name="sex" style="width: 100px">
														<option value="男">男</option>
														<option value="女">女</option>	
													</select>
												</td>
												<td valign="bottom" align="left" height="30">
													<span class="red1" id="sex-hint"></span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom" height="30">
													<span class="dot">* </span>
													<span>选择身份：</span>
												</td>
												<td valign="bottom" align="left" height="30" style="padding-left: 10px;">
													<select id="userType" name="userType" style="width: 100px">
														<option value="teacher">教师</option>
														<option value="student">学生</option>
														<option value="parent">家长</option>
														<option value="normal">其他</option>
													</select>
												</td>
												<td valign="bottom" align="left" height="30">
													<span class="red1" id="userType-hint"></span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom" height="30">
													<span>出生日期：</span>
												</td>
												<td valign="bottom" align="left" height="30" style="padding-left: 10px;">
													<input id="birthday" name="birthday" type="text" maxlength="15" class="Wdate" onclick="WdatePicker()" readonly="readonly"/>
												</td>
												<td valign="bottom" align="left" height="30">
													<span class="red1" id="birthday-hint"></span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom" height="30">
													<span>家庭住址：</span>
												</td>
												<td valign="bottom" align="left" height="30" style="padding-left: 10px;">
													<input id="address" name="address" type="text" maxlength="100"/>
												</td>
												<td valign="bottom" align="left" height="30">
													<span class="red1" id="address-hint"></span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom" height="30">
													<span>联系电话：</span>
												</td>
												<td valign="bottom" align="left" height="30" style="padding-left: 10px;">
													<input id="phone" name="phone" type="text" maxlength="30"/>
												</td>
												<td valign="bottom" align="left" height="30">
													<span class="red1" id="phone-hint"></span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom" height="30">
													<span class="dot">* </span>
													<span>E-mail地址：</span>
												</td>
												<td valign="bottom" align="left" height="30" style="padding-left: 10px;">
													<input id="email" name="email" type="text" maxlength="40"/>
												</td>
												<td valign="bottom" align="left" height="30">
													<span class="red1" id="email-hint"></span>
												</td>
											</tr>
											<tr>
												<td colspan="3" align="left" valign="bottom" height="30">
													<span>带有星号（<span class="dot">* </span>）的项目为必填项！</span>
												</td>
											</tr>
											<tr>
												<td align="right" valign="bottom">
												</td>
												<td valign="bottom" align="left" style="padding-left: 10px;">
													<input type="submit" name="btnReg" class="uniformButton" value="注 册"
													id="btnReg" onclick=""
													 />
												</td>
												<td valign="bottom" align="left">
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
						<br />
						
					</div>
				</form>
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