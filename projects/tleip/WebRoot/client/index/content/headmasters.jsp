<%@ page language="java" pageEncoding="gbk"%>
<%@ include file="/commons/tags.inc"%>
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
		<logic:iterate id="content" name="content_xz">
			<c:choose>
				<c:when
					test="${content.imgNewsAddress != null && content.imgNewsAddress != ''}">
					<img src="<%=basePath%>${content.imgNewsAddress}" />
				</c:when>
				<c:otherwise>
					<img src="<%=basePath%>res/client/images/xiaozhang.jpg"
						alt="У���DҶС��" />
				</c:otherwise>
			</c:choose>
		</logic:iterate>
	</div>
</div>
<div class="message" style="text-align: center;">
	<a href="mailto:tlx-lsw@nsjy.com" class="textbg">У������</a>
	<a href="<%=basePath%>front/message.do?method=queryMessage">����ͶƱ</a>
</div>
<div class="fxiaozhang">
	<h3>
		��У���D������
	</h3>
	<div class="xz_img">
		<logic:iterate id="content" name="content_fxz">
			<c:choose>
				<c:when
					test="${content.imgNewsAddress != null && content.imgNewsAddress != ''}">
					<img src="<%=basePath%>${content.imgNewsAddress}" />
				</c:when>
				<c:otherwise>
					<img src="<%=basePath%>res/client/images/fxiaozhang.jpg"
						alt="��У���D������" />
				</c:otherwise>
			</c:choose>
		</logic:iterate>
	</div>
	<p>
		��У���D������
	</p>
</div>