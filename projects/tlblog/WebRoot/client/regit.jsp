<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/tags.inc"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="${basePath }res/client/css/css.css" />
<title>博客主页</title>
</head>

<body bgcolor="#e5e8e7">
<div class="blogout">
	<div class="bloginner">
		<!-- 头部 begin -->
		<jsp:include page="/client/head.jsp"/>
		<!-- 头部 end -->
		
		<div class="wcon">
			<h1>用户注册</h1>
			<div class="regcot">
				<div class="recicleb">
					<ul>
						<li>
							<span>用户名：</span>
							<input type="text" value="请输入您的用户名称" />
							<p><img src="css/img/y.gif" /></p>
						</li>
						<li>
							<span>密码：</span>
							<input type="text" value="请输入6-12位数字或字母" />
							<p>请输入6-12位数字或字母</p>
						</li>
						<li>
							<span>确认密码：</span>
							<input type="text" value="请再输入一次密码" />
							<p>确认密码不正确，请重新输入</p>
						</li>
						<li>
							<span>验证码：</span>
							<input type="text" value="" class="yzm" />
							<a href="" title="看不清，换一张"><img src="css/img/yzm.jpg" alt="看不清，换一张" /></a>
							<p>验证码不正确，请重新输入</p>
						</li>
						<li>
							<a href="" class="zhuce"><span>注册</span></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		
		<!-- 底部 begin -->
		<jsp:include page="/client/bottom.jsp"/>
		<!-- 底部 end -->
	</div>
</div>
</body>
</html>