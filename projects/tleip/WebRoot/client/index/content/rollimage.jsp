<%@ page language="java" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script type="text/javascript"
			src="<%=basePath%>res/client/js/jquery.cycle.js"></script>
<script type="text/javascript">
	$(function(){
		$('#banner').cycle({ 
				fx:'scrollLeft',
				pager:'#btn'
		});
	})
</script>
<style type="text/css">
.l-a {
	BACKGROUND: url(<%=basePath%>res/client/css/img/icon-right-none.png)
		no-repeat;
}

* html .l-a {
	BACKGROUND: url(<%=basePath%>res/client/css/img/icon-right-none.gif)
		no-repeat;
}

.l-h {
	BACKGROUND: url(<%=basePath%>res/client/css/img/icon-right-next.png)
		no-repeat;
}

* html .l-h {
	BACKGROUND: url(<%=basePath%>res/client/css/img/icon-right-next.gif)
		no-repeat;
}

.r-a {
	BACKGROUND: url(<%=basePath%>res/client/css/img/icon-left-none.png)
		no-repeat;
	margin-left: 300px;
}

* html .r-a {
	BACKGROUND: url(<%=basePath%>res/client/css/img/icon-left-none.gif)
		no-repeat;
	margin-left: 200px;
}

.r-h {
	BACKGROUND: url(<%=basePath%>res/client/css/img/icon-left-next.png)
		no-repeat;
	margin-left: 300px;
}

* html .r-h {
	BACKGROUND: url(<%=basePath%>res/client/css/img/icon-left-next.gif)
		no-repeat;
	margin-left: 200px;
}
</style>
<!--Í¼Æ¬»ÃµÆ-->
<div class=frame>
	<div class=frames id=zzjs_net>
		<a href="<%=basePath%>" target="_blank">
			<div id=f1
				style="BACKGROUND: url(<%=basePath%>res/client/images/01_banner.jpg); OVERFLOW: hidden; WIDTH: 1006px; POSITION: absolute; HEIGHT: 416px">
			</div></a>
		<a href="<%=basePath%>" target="_blank">
			<div class=frame-2 id=f2></div> </a>
		<a href="<%=basePath%>" target="_blank">
			<div class=frame-3 id=f3></div> </a>
		<a href="<%=basePath%>" target="_blank">
			<div class=frame-4 id=f4></div> </a>
		<a href="<%=basePath%>" target="_blank">
			<div class=frame-5 id=f5></div> </a>
	</div>
	<div class=controls>
		<div class="arrow l-a" onmouseover=highlightA(this); onclick=prevF();
			onmouseout=dehighlightA(this);></div>
		<div class=off id=control1 onmouseover=hover(1) onclick=press(1,false)
			onmouseout=out(1)></div>
		<div class=off id=control2 onmouseover=hover(2) onclick=press(2,false)
			onmouseout=out(2)></div>
		<div class=off id=control3 onmouseover=hover(3) onclick=press(3,false)
			onmouseout=out(3)></div>
		<div class=off id=control4 onmouseover=hover(4) onclick=press(4,false)
			onmouseout=out(4)></div>
		<div class="arrow r-a" onmouseover=highlightA(this); onclick=nextF();
			onmouseout=dehighlightA(this);></div>
	</div>
	<INPUT id=numFrame type=hidden value=4></INPUT>
	<a href="<%=basePath%>" target="_blank"><INPUT id=images1 type=hidden
			value="<%=basePath%>res/client/images/01_banner.jpg"></INPUT> </a>
	<a href="<%=basePath%>" target="_blank"><INPUT id=images2 type=hidden
			value="<%=basePath%>res/client/images/02_banner.jpg"></INPUT> </a>
	<a href="<%=basePath%>" target="_blank"><INPUT id=images3 type=hidden
			value="<%=basePath%>res/client/images/03_banner.jpg"></INPUT> </a>
	<a href="<%=basePath%>" target="_blank"><INPUT id=images4 type=hidden
			value="<%=basePath%>res/client/images/04_banner.jpg"></INPUT> </a>
</div>
<div class="clear"></div>
<script type="text/javascript" src="<%=basePath%>res/client/js/cycle.js"></script>
