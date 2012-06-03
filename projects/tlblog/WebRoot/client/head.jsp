<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/tags.inc"%>
<div class="bl_head">
	<!-- 菜单导航 begin -->
	<div class="bl_nav">
		<a href="${basePath }client/blog.jsp" title="首页" class="hover">首页</a>|
		<a href="${basePath }client/login.jsp" title="登陆">登陆</a>|
		<a href="${basePath }client/regit.jsp" title="注册">注册</a>|
		<a href="${basePath }client/class.html" title="阅读">阅读</a>|
		<a href="${basePath }client/class.html" title="博客">博客</a>|
		<a href="${basePath }client/blogpic/pic.jsp" title="相册">相册</a>|
		<a href="${basePath }client/class.html" title="精华">精华</a>
	</div>
	<!-- 菜单导航 end -->
	<!-- 博客搜索框 begin -->
	<div class="bl_search">
		<input type="text" value="请输入搜索内容" />
		<input type="submit" class="bl_sure" value="" />
	</div>
	<!-- 博客搜索框 end -->
</div>
