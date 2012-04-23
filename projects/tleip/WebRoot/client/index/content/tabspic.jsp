<%@ page language="java" pageEncoding="gbk"%>
<%@ include file="/commons/tags.inc"%>
<%@ include file="/inc/include.jsp"%>
<style>
/*简单修改符合塘朗网站的功能*/
.container{
	width: 410px;
	margin: 0px 0px;
	height: 150px;
}

.handle{
	float:right;
	margin:0 5;
	/*width:22px;*/
	width:32px;
	height:150px;
	cursor:pointer;
	background:#3DBED1;
	font:bold 14px Arial, Helvetica, sans-serif;
	text-align:center;
	color:#FFF;	
}

.handle:hover{
	background:#3D9FD1;
}

.select{
	background:#3DBED1;
}
.slide{
	background:url(${basePath}res/client/css/img/middle.gif) no-repeat;
	float:right;
	width:342px;
	height:150px;
	display:none;
	margin:0 0;
}

.rotate{
	margin:0;
	vertical-align : center;
}

.container p {
	padding: 20px 5px 5px 5px;
	font-size: 14px;
}

.container h3 {
	padding: 10px 0px 5px 150px;
	font-size: 16px;
}

.container ul {
	padding-left: 120px;
}

.container li {
	width: 210px;
	background: url(${basePath}res/client/css/img/li-list-icon1.gif) no-repeat left;
	padding-left: 5px;
	/*padding-left: 120px;*/
}

.container h4 {
	width: 35px;
	height: 136px;
	font-size: 14px;
}

.container h4 a {
	display: inline-block;
	padding: 20px 8px;
	color: #fff;
}

.container h4 a:hover {
	color: #4c9aa6;
}
</style>
<script type="text/javascript" src="${basePath }client/index/content/tabspic.js"></script>
<div class="container">
  	<div>
		  <div class="handle" id="one"><p class="rotate">生态乐园</p></div>
		  <div class="slide">
		  	<h3>
				"生态乐园"
			</h3>
			<ul>
				<li>
					<a href="">[环境与生活]爱护我们身边的花草树木…</a>
				</li>
				<li>
					<a href="">[德育动态]我校举行突发事件紧… </a>
				</li>
				<li>
					<a href="">[心灵港湾]以身立教 为人师表</a>
				</li>
				<li>
					<a href="">[家庭德育]谨防家长病态心理影…</a>
				</li>
			</ul>
		  </div>
	</div>

	<div>      
		  <div class="handle" id="two"><p class="rotate">幸福课堂</p></div>
		  <div class="slide">
			<h3>
				"幸福课堂"
			</h3>
			<ul>
				<li>
					<a href="">[青少年与法]警校合作加强小学警校合作加强小学…</a>
				</li>
				<li>
					<a href="">[德育动态]我校举行突发事件紧… </a>
				</li>
				<li>
					<a href="">[心灵港湾]以身立教 为人师表</a>
				</li>
				<li>
					<a href="">[家庭德育]谨防家长病态心理影…</a>
				</li>
			</ul>
		  </div>  
	</div>

	<div>   
		  <div class="handle" id="three"><p class="rotate">三味德育</p></div>
		  <div class="slide">
		  	<h3>
				"三味德育"
			</h3>
			<ul>
				<li>
					<a href="">[青少年与法]警校合作加强小学警校合作加强小学…</a>
				</li>
				<li>
					<a href="">[德育动态]我校举行突发事件紧… </a>
				</li>
				<li>
					<a href="">[心灵港湾]以身立教 为人师表</a>
				</li>
				<li>
					<a href="">[家庭德育]谨防家长病态心理影…</a>
				</li>
			</ul>
		  </div>
	</div>
	<div class="clear"></div>
</div>