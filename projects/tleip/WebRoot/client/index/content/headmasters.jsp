<%@ page language="java" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="xiaozhang">
	<h3>
		校长―叶小勇
	</h3>
	<div class="xz_img">
		<img src="<%=basePath%>res/client/images/xiaozhang.jpg" alt="校长―叶小勇" />
	</div>
</div>
<div class="message" style="text-align: center;">
	<a href="mailto:tlx-lsw@nsjy.com" class="textbg">校长信箱</a>
</div>
<div class="fxiaozhang">
	<h3>
		副校长―江长冰
	</h3>
	<div class="xz_img">
		<img src="<%=basePath%>res/client/images/fxiaozhang.jpg" alt="副校长―江长冰" />
	</div>
	<p>
		副校长―江长冰
	</p>
</div>