<%@ page language="java" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="xiaozhang">
	<h3>
		У���DҶС��
	</h3>
	<div class="xz_img">
		<img src="<%=basePath%>res/client/images/xiaozhang.jpg" alt="У���DҶС��" />
	</div>
</div>
<div class="message" style="text-align: center;">
	<a href="mailto:tlx-lsw@nsjy.com" class="textbg">У������</a>
	<a href="<%=basePath %>front/message.do?method=queryMessage">����ͶƱ</a>	
</div>
<div class="fxiaozhang">
	<h3>
		��У���D������
	</h3>
	<div class="xz_img">
		<img src="<%=basePath%>res/client/images/fxiaozhang.jpg" alt="��У���D������" />
	</div>
	<p>
		��У���D������
	</p>
</div>