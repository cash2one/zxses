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
		
		
		<div class="bl_main">
			<!-- 左边 begin -->
			<jsp:include page="/client/left.jsp"/>
			<!-- 左边 end -->
			
			<!-- 右边文章列表 begin -->
			<div class="bl_right fr">
				<div class="bl_r_title">
					<h1>博文</h1>
					<a href="${basePath }front/blog/blogarticle.do?method=addInput">发表新文章</a>
				</div>
				<div class="bl_r_cont">
					<div>
						<ul>
							<li>
								<h1>多读一点书，就高一点点。。。
									<p>标签：<span>杂谈</span></p>
								</h1>
								<p>高高在上的猴子小姐：“多读一本书，就高一点点……”（知识能改变对快乐的感知、对痛苦的耐受力、乃至于世界观、命运、人生、还有家庭地位神马的……没文化在家里说话也没底气啊…………）</p>
								<div class="page">
									阅读<span>（6）</span>|
									<a href="">评论</a><span>（0）</span>|
									<a href="">收藏</a>|
									<span>2012-05-28 10:09:27</span>
									<a href="" class="bl_more" title="查看更多">查看更多》</a>
								</div>
							</li>
							<li>
								<h1>多读一点书，就高一点点。。。
									<p>标签：<span>杂谈</span></p>
								</h1>
								<p>高高在上的猴子小姐：“多读一本书，就高一点点……”（知识能改变对快乐的感知、对痛苦的耐受力、乃至于世界观、命运、人生、还有家庭地位神马的……没文化在家里说话也没底气啊…………）</p>
								<div class="page">
									阅读<span>（6）</span>|
									<a href="">评论</a><span>（0）</span>|
									<a href="">收藏</a>|
									<span>2012-05-28 10:09:27</span>
									<a href="" class="bl_more" title="查看更多">查看更多》</a>
								</div>
							</li>
							<li>
								<h1>多读一点书，就高一点点。。。
									<p>标签：<span>杂谈</span></p>
								</h1>
								<p>高高在上的猴子小姐：“多读一本书，就高一点点……”（知识能改变对快乐的感知、对痛苦的耐受力、乃至于世界观、命运、人生、还有家庭地位神马的……没文化在家里说话也没底气啊…………）</p>
								<div class="page">
									阅读<span>（6）</span>|
									<a href="">评论</a><span>（0）</span>|
									<a href="">收藏</a>|
									<span>2012-05-28 10:09:27</span>
									<a href="" class="bl_more" title="查看更多">查看更多》</a>
								</div>
							</li>
						</ul>
					</div>
					
					<!-- 插入分页 begin -->
					<div class="digg4" style=" text-align:center;">
						<ul >
							<li ><a href="" class="diga">首页</a></li>
							<li><a href="">上一页</a></li>
							<li class="diggcurrent">1</li>
							<li><a href="">下一页</a></li>
							<li><a href="">未页</a></li>
						</ul>
					</div>
					<!-- 插入分页 begin -->
					
				</div>
				<!-- 右边文章列表 end -->
			</div>
			<div class="clear"></div>
		</div>
		
		<!-- 底部 begin -->
		<jsp:include page="/client/bottom.jsp"/>
		<!-- 底部 end -->
	</div>
</div>
</body>
</html>