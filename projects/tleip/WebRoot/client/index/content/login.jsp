<%@ page language="java" pageEncoding="gbk"%>
<%@ include file="/commons/tags.inc"%>
<%@ include file="/inc/include.jsp"%>
<script type="text/javascript" src="${basePath }client/index/content/login_reg/jsfiles/login.js"></script>
<script>
function reset(){
	 document.getElementById("userAccount").value='';
   	 document.getElementById("password").value='';
   	 document.getElementById("checkCode").value='';
}
</script>
<div id="changeInfo">
	<c:if test="${frontUserInfo == null}">
		<ul class="for_form">
			<li>�û�����<input id="userAccount" name="userAccount" type="text" value="" maxlength="20"/></li>
			<li><span>����</span>��<input id="password" name="password" type="password" value="" maxlength="20"/></li>
			<li>��֤�룺<input id="checkCode" name="checkCode" type="text" value="" maxlength="20"/>
				<span><img id="codeImage" onclick="changeimage(this);"
							src="${basePath}codeImageAction.do?frontUserCode=yes"
							style="vertical-align:bottom;padding-bottom: 4px;" title="�����壬���������֤��" id="codeImage" />
				</span>
			</li>
			<%--<li class="check"><img src="${basePath}front/images/yzm.jpg" width="81px" height="25px" /><a href="" class="next">�����壬��һ��</a></li>--%>
			<li style="padding: 5px 0px 5px 0px">
				<input id="login"  onclick="loginCheck();" type="button" class="sure" value="�� ½" />
				<input type="reset" class="sure" onclick="reset()" value="�� ��" />
			</li>
			<li>
				<a href="${basePath}client/index/content/login_reg/userRegInf.jsp">�û�ע��</a><a href="${basePath}client/index/content/login_reg/findPassword.jsp">��������</a>
			</li>
		</ul>
		<div class="user_reg">
			<input type="hidden" id="userType" name="userType" value="teacher"/>
			<div class="user_reg_tea"><a id="teacherType" href="javascript:changeUserType('teacher',this);" class="user_hover"><span>��ʦ��½</span></a></div>
			<div class="user_reg_stu"><a id="studentType" href="javascript:changeUserType('student',this);"><span>ѧ����½</span></a></div>
			<div class="user_reg_par"><a id="parentType" href="javascript:changeUserType('parent',this);"><span>�ҳ���½</span></a></div>
			<div class="user_reg_oth"><a id="normalType" href="javascript:changeUserType('normal',this);"><span>������½</span></a></div>
		</div>
	</c:if>
	<c:if test="${frontUserInfo != null}">
		<div class="for_form_sec">
			<p>
				<span>��ӭ����${frontUserInfo.userAccount }</span>
				<a href="${basePath}front/login.do?method=toChangeInfo">���޸ĸ�����Ϣ��</a>
				<a href="${basePath}client/index/content/login_reg/changePw.jsp">���޸����롿</a>
				<a href="${basePath}front/login.do?method=loginOut">��ע����</a>
			</p>		
		</div>
	</c:if>
</div>