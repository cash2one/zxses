<%@ page language="java" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div id="foot">
	<div class="foot_bot">
		<div class="foot_inner">
			<div class="foot_logo fl">
				<img src="<%=basePath%>res/client/css/img/foot-logo.gif" />
			</div>
			<div class="foot_cont fl">
				<p>
					<a style="cursor: pointer;"
						onClick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://www.sztlxx.com');">��Ϊ��ҳ</a>|
					<a  style="cursor: pointer;"
						onClick="this.style.behavior='url(#default#homepage)';window.external.addFavorite('http://www.sztlxx.com','��������ɽ������Сѧ');">�����ղ�</a>|
					<a href="mailto:tlx-lsw@163.com">��ϵվ��</a>|
					<a href="<%=basePath%>client/itembig1000015.html">��������</a>|
					<a href="<%=basePath%>client/itembig1000001.html">��������</a>
				</p>
				<p>
					<a href="http://www.sztlxx.com">��������ɽ������Сѧ</a> ��Ȩ����Copyright &copy; 2002-2012 ��ϵ�绰��0755-86007697
					QQ:324651(����
				</p>
				<p>
					<a href="http://www.miibeian.gov.cn/">�������:��ICP��05084369��</a>
					<a href="http://www.szzhfx.com">��վ����֧�֣�����������Ϣ�������޹�˾</a>
					<img src="<%=basePath%>res/client/css/img/foot-icon.gif" />
				</p>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
