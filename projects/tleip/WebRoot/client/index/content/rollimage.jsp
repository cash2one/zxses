<%@ page language="java" pageEncoding="gbk"%>
<%@ include file="/commons/tags.inc"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<script type="text/javascript"
	src="<%=basePath%>tools/myFocus/js/myfocus-1.2.4.min.js"></script>
<!--����myFocus��-->
<script type="text/javascript"
	src="<%=basePath%>tools/myFocus/js/pattern/mF_expo2010.js"></script>
<!--������Ӧ��js-->
<link rel="stylesheet"
	href="<%=basePath%>tools/myFocus/js/pattern/mF_expo2010.css" />
<!--������Ӧ��css-->
<script type="text/javascript">
myFocus.set({
    id:'boxID',//����ͼ����ID
    pattern:'mF_expo2010',//���Ӧ�õ�����
    time:3,//�л�ʱ����(��)
    trigger:'mouseover',//�����л�ģʽ:'click'(���)/'mouseover'(��ͣ)
    width:980,//����ͼƬ������(����)
    height:405,//����ͼƬ����߶�(����)
    txtHeight:'0',//���ֲ�߶�����(����),'default'ΪĬ�ϸ߶ȣ�0Ϊ����
    path:'<%=basePath%>tools/myFocus/js/pattern/',
	autoZoom:'true'
});
</script>
<div id="boxID" style="visibility: hidden">
	<!--����ͼ����-->
	<div class="loading">
	</div>
	<!--���뻭��(��ɾ��)-->
	<ul class="pic">
		<!--�����б�-->
		<logic:iterate id="content" name="contentManageList">
			<c:choose>
				<c:when test="${content.imgNewsAddress != null && content.imgNewsAddress != ''}">
					<li>
						<img src="<%=basePath%>${content.imgNewsAddress}" />
					</li>
				</c:when>
				<c:otherwise>
					<li>
						<img src="<%=basePath%>res/client/images/example.jpg" />
					</li>
				</c:otherwise>
			</c:choose>
		</logic:iterate>
	</ul>
</div>