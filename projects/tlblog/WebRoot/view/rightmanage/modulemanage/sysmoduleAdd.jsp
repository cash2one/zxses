<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/commons/tags.inc"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>新增模块</title>
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>res/theme/blue/css/old.css">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>res/theme/blue/css/css.css">
		<script language="javascript" type="text/javascript"
			src="<%=basePath%>res/admin/js/checkright.js"></script>
		<script language="javascript" type="text/javascript"
			src="<%=basePath%>res/admin/js/common.js"></script>
		<script language="javascript" type="text/javascript"
			src="<%=basePath%>res/admin/js/jquery.js"></script>
		<script language="javascript" type="text/javascript"
			src="<%=basePath%>res/admin/js/coolwindow.js"></script>
		<script language="javascript" type="text/javascript"
			src="<%=basePath%>res/admin/js/jquery.form.js"></script>
		
		<script language="JavaScript" type="text/JavaScript"> 
		  function add()
		  {		    
		    /*var personCode = document.getElementsByName("basicPerson.personCode")[0].value;
		    var personName = document.getElementsByName("basicPerson.personName")[0].value;
		    var password = document.getElementsByName("basicPerson.password")[0].value;
		    var personAccount = document.getElementsByName("basicPerson.personAccount")[0].value;
		    var deptId = document.getElementsByName("basicDepartment.deptId")[0].value;
		    if(personCode !="" && personName !="" && password !="" && personAccount !="")
		    {
		    $.post("rightManage.do?method=checkUserAccount",{personAccount:personAccount,deptId:deptId},function(response){
               if(response=="exist"){
                  alert("此登录账号已存在，请重新输入！");
               }else{ 
                rightManageForm.submit();
               }
            });
            }
            else
            {
                alert("带*号的不能为空！")
            }*/
            sysModuleForm.submit();
		  }
		  function back()
          {
		     window.location.href="<%=basePath%>view/sysmodule.do?parentId=${sysModuleForm.parentId }";
		  }	
		</script>
	</head>
	<body>		
			<table cellSpacing="0" cellPadding="0" width="100%" border="0"
				align="center">
				<tr>
					<td valign="top">
						<table cellSpacing="0" cellPadding="0" border="0" width="100%"
							align="left">
							<tr>
								<td>
								<table class="pathbg">
										<tr>
											<td height="24" class="dh1">
												系统管理-&gt;模块管理-&gt;
												<span class="chuti lv">新增模块</span>${showMsg }
											</td>	
											<td align="right">
											<input name="button" type="button" class="an" id="button"
												onclick="javascript:add();" value="确定" />
											&nbsp;
											<input name="button2" type="button" class="an" id="button2"
												value="返回" onclick="javascript:back();" />
											</td>	
											<td width="15"></td>									
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
								<html:form action="view/sysmodule.do?method=add" method="post">
									<input type="hidden" name="parentId" value="${sysModuleForm.parentId }"/>
									<table cellSpacing="0" cellPadding="0" border="0" width="100%"
										align="center">
										<tr>
											<td>
												<!-- 具体录入字段入口 -->
												<table class="table" cellSpacing="1" cellPadding="0"
													width="100%" border="0">
													<tr>
														<td width="20%" class="td_left">
															<font color="#ff0000">* </font>模块名称:&nbsp;
														</td>
														<td width="30%" class="td_right">
															<input type="text" name="name" id="name" size="30" maxlength="20" />
														</td>
													</tr>
													<tr>
														<td width="20%" class="td_left">
															<font color="#ff0000">* </font>模块编码:
														</td>
														<td width="30%" class="td_right">
															 <input type="text" name="sn" id="sn" size="30" maxlength="20" />
														</td>
													</tr>
													<tr>
														<td width="20%" class="td_left">
															<font color="#ff0000">* </font>排序号:
														</td>
														<td width="30%" class="td_right">
															  <input type="text" name="orderNo" id="orderNo" size="30" maxlength="20" />
														</td>
													</tr>
													<tr>
														<td width="20%" class="td_left">
															模块地址:
														</td>
														<td width="30%" class="td_right">
															<input type="text" name="url" id="url" size="30" maxlength="20" />
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</html:form>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>		
	</body>
</html>







