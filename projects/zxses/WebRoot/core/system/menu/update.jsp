<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("basePath", basePath);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<base href="<%=basePath%>" />
		<title>修改菜单信息</title>
		<%@ include file="/inc/common.inc"%>
		<script type="text/javascript" src="js/jquery/jquery-1.7.1.min.js"></script>
		<script type="text/javascript">
			
			if(${flushLeft=="true"}){
				window.parent.leftIframe.location.reload();
			}
			
			if(${selectHrDept!=null}){
				var treeObj = window.parent.$.fn.zTree.getZTreeObj("treeDemo");
				var selectNode = treeObj.getSelectedNodes();
				var tmpParentNode=null;
				if(selectNode.length>0){
					tmpParentNode=selectNode[0];
				}
				tmpParentNode.name="${selectSysMenu.name}";
				treeObj.updateNode(tmpParentNode);
			}
		</script>
	</head>

	<body>
		<center>
			<div id="msgdiv" style="line-height: 20px; color: white;">
				<s:if test="#attr.messageInfo!=null">
					<span
						style="vertical-align: middle; padding: 10px 0px 5px 5px; background-color: #68AF02;"><s:property
							value="%{#attr.messageInfo}" /> </span>
				</s:if>
				<s:if test="#attr.messageError!=null">
					<span
						style="vertical-align: middle; padding: 10px 0px 5px 5px; padding-bottom: 10px; background-color: #eaa000"><s:property
							value="%{#attr.messageError}" /> </span>
				</s:if>
			</div>
		</center>
		<s:form action="sysMenu!updateSysMenu.action" method="post"
			id="myForm" name="myForm">
			<s:hidden name="inputPage" value="update.jsp"></s:hidden>
			<s:hidden name="sysMenu.id" ></s:hidden>
			<div class="editdiv">
				<table class="edittable">
					<tr>
						<td class="tdleft">
							菜单编号：
						</td>
						<td class="tdright">
							<s:textfield name="sysMenu.code" cssClass="zd1" id="sysMenu_code"></s:textfield>
							<s:fielderror theme="simple">
								<s:param>sysMenu.code</s:param>
							</s:fielderror>
						</td>
					</tr>
					<tr>
						<td class="tdleft">
							菜单名称：
						</td>
						<td class="tdright">
							<s:textfield name="sysMenu.name" cssClass="zd1" id="sysMenu_name"></s:textfield>
							<s:fielderror theme="simple">
								<s:param>sysMenu.name</s:param>
							</s:fielderror>
						</td>
					</tr>
					<tr>
						<td class="tdleft"> 
							菜单URL：
						</td>
						<td class="tdright">
							<s:textfield name="sysMenu.url" cssClass="zd1" id="sysMenu_url"></s:textfield>
							<s:fielderror theme="simple">
								<s:param>sysMenu.url</s:param>
							</s:fielderror>
						</td>
					</tr>
					<tr>
						<td class="tdleft">
							是否授权：
						</td>
						<td class="tdright">
							<s:checkbox name="isEnable" ></s:checkbox>
						</td>
					</tr>
					<tr>
						<td class="tdleft">
							排 序：
						</td>
						<td class="tdright">
							<s:textfield name="sysMenu.recordOrderStr" cssClass="zd1" id="sysMenu_recordOrderStr"></s:textfield>
							<s:fielderror theme="simple">
								<s:param>sysMenu.recordOrderStr</s:param>
							</s:fielderror>
						</td>
					</tr>
					<tr>
						<td class="tdleft">
							菜单描述：
						</td>
						<td class="tdright">
							<s:textarea name="sysMenu.description" cssClass="zd1" cssStyle="height:50px;"
								id="sysMenu_description"></s:textarea>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
						<td height="32" align="left">
							<s:submit cssClass="an" value="保存"></s:submit>
						</td>
					</tr>
				</table>
			</div>
		</s:form>
	</body>
</html>
