<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="/commons/tags.inc"%>
<%@ include file="/inc/include.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>深圳市南山区塘朗小学-网络投票</title>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="深圳,南山,塘朗,小学" />
		<meta http-equiv="description" content="深圳市南山区塘朗小学" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>res/client/css/css.css" />
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>res/client/css/skin.css" />
		<script language="javascript" type="text/javascript"
			src="<%=basePath%>res/client/js/js_whol.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>res/client/js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>res/client/js/jquery.jcarousel.min.js"></script>
		<script type="text/javascript"
			src="<%=basePath%>res/client/js/util.js"></script>
		<%@ include file="/inc/resources.jsp"%>
		<script type="text/javascript" src="${basePath}tools/My97DatePicker/WdatePicker.js"></script>
		<script type="text/javascript" src="${basePath}client/index/content/vote/voteIndex.js/voteindex.js"></script>
		<style>
			/*简单修改符合塘朗网站的功能*/
			.wrap{
				border-bottom: 1px solid #2095A6;
			    border-left: 1px solid #2095A6;
			    border-right: 1px solid #2095A6;
			    border-top: 1px solid #2095A6;
			    clear: left;
			    font-size: 12px;
			    margin: 0 auto;
			    padding-bottom: 30px;
			    padding-top: 10px;
			}
			.userInfo{
				border: 1px solid #2095A6;
			}
			.postdate{
			    border-right: 1px solid #2095A6;
			    border-top: 1px solid #2095A6;
			}
		</style>
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>client/index/content/vote/app.platform.vote.v3.css" />
	</head>
	<body>
		<div id="warp">
			<!--head-->
			<div class="header">
				<div id="warp">
					<div id="head">
						<bean:include id="queryMenu"
							page="/client/newsClient.do?method=queryMenu" />
						<bean:write name="queryMenu" filter="false" />
						<div style="text-align: center;">
						<img align="middle" src="<%=basePath%>res/client/images/second_list.jpg" width="970" height="204"/>
						</div>
					</div>
				</div>
			</div>
			<!--end-->
			<!--web-->
			<div id="web">
				<div class="page_line">
					首页&gt;&gt;网络投票
				</div>
				
				<div id="" style="width: 990px;" class="fr">
					<div class="art_title" style="width:970px;">
						<span>网络投票</span>
					</div>
					<div class="">
						<div>
							<table width="100%" border="0" align="center">
								<tr>
									<td colspan="3" style=" height:40px;"
										valign="bottom">
										<span id="lblError" style="color:Red;"></span>
									</td>
								</tr>
								<tr>
									<td colspan="3" style=" height:40px;"
										valign="bottom">
										<div id="content" class="panelInclude" style="margin-right: 20px;">
											<div id="body">
												<c:if test="${voteTitle != null}">
													<form method="post" action=""  id="form_survey" name="form_survey">
													<input type="hidden" name="voteId" value="${voteTitle.voteId }"/>
													<table width="100%" cellspacing="0" cellpadding="0" border="0" style="visibility: visible; " id="hot">
														<tbody>
															<tr>
																<td>&nbsp;</td>
																<td width="50" id="border"><nobr><b>人气值：</b><span id="hot_value"><fmt:formatNumber value="${totalCount }" pattern="#,##0" type="number"/></span></nobr></td>
															</tr>
														</tbody>
													</table>
													<div id="main">
														<div id="question_361707" class="question result">
															<div class="title f14px">
																<button class="icon_vote">&nbsp;</button>${voteTitle.voteName } 
															</div>
															<div class="content line">
															<div class="nodetail"></div>
															<table width="100%" cellspacing="0" cellpadding="0" border="0">
																<tbody>
																	<c:set var="colorCount" value="0" scope="page"/>
																	<c:forEach items="${voteTitle.voteItemses}" var="items" varStatus="status">
																		<c:if test="${colorCount >= 9}">
																			<c:set var="colorCount" value="0" scope="page"/>
																		</c:if>
																		<tr>
																			<td width="430" style="padding-right:20px;">
																				<label><input${voteTitle.voteType=="1"?" type=\"radio\"":" type=\"checkbox\"" }" onclick="" value="${items.itemId}" name="itemsIds"/>
																				<span class="option">${items.itemName }</span></label>
																			</td>
																			<td width="170">
																				<div id="result_bar_361707_25592" style="display: block; " class="process">
																				<div style="width: ${items.itemBallot * 170/ totalCount }px;" class="style${colorCount }" id="process_bar_361707_25592"></div></div>
																			</td>
																			<td width="110" id="process_txt_361707_25592" style="display: block; " class="black">
																				<nobr><fmt:formatNumber value="${items.itemBallot }" pattern="#,##0" type="number"/> (<fmt:formatNumber value="${items.itemBallot * 100 / totalCount}" pattern="0.##" type="number"/>%)</nobr>
																			</td>
																		</tr>
																		<c:set var="colorCount" value="${colorCount + 1}" scope="page"/>
																	</c:forEach>
																</tbody>
															</table>
														</div>
														</div>
														<div class="submit line" align="center">
															<input type="button" onclick="" value="提  交" class="uniformButton" id="submit_survey"/>
														</div>
													</form>
												</c:if>
												<c:if test="${voteTitle == null}">
													目前没有投票！
												</c:if>
												<%--<form method="post" action=""  id="form_survey" name="form_survey">
													<table width="100%" cellspacing="0" cellpadding="0" border="0" style="visibility: visible; " id="hot">
														<tbody>
															<tr>
																<td>&nbsp;</td>
																<td width="50" id="border"><nobr><b>人气值：</b><span id="hot_value">4,466,168</span></nobr></td>
															</tr>
														</tbody>
													</table>
													<div id="main">
														<div id="question_361707" class="question result">
															<div class="title f14px">
																<button class="icon_vote">&nbsp;</button>你认为国美起诉黄光裕会胜诉吗？ 
															</div>
															<div class="content line">
															<div class="nodetail"></div>
															<table width="100%" cellspacing="0" cellpadding="0" border="0">
																<tbody>
																	<tr>
																		<td width="430" style="padding-right:20px;">
																			<label><input type="radio" onclick="AppPlatform.Survey.Option.check(this,361707,'sbj_361707[]',0);" value="25592" id="opt_25592" name="sbj_361707[]"/>
																			<span class="option">帮助学生寻找、搜集和利用学习资源</span></label>
																		</td>
																		<td width="170">
																			<div id="result_bar_361707_25592" style="display: block; " class="process">
																			<div style="width: 36.176px;" class="style2" id="process_bar_361707_25592"></div></div>
																		</td>
																		<td width="110" id="process_txt_361707_25592" style="display: block; " class="black">
																			<nobr>336,648 (22.61%)</nobr>
																		</td>
																	</tr>
																	<tr>
																		<td width="430" style="padding-right:20px;">
																			<label><input type="radio" onclick="AppPlatform.Survey.Option.check(this,361707,'sbj_361707[]',0);" value="25593" id="" name=""/>
																			<span class="option">不会</span></label>
																		</td>
																		<td width="170"><div id="result_bar_361707_25593" style="display: block; " class="process"><div style="width: 104.896px;" class="style3" id="process_bar_361707_25593"></div></div></td>
																		<td width="110" id="process_txt_361707_25593" style="display: block; " class="black"><nobr>976,023 (65.56%)</nobr>
																		</td>
																	</tr>
																	<tr>
																		<td width="430" style="padding-right:20px;">
																			<label><input type="radio" onclick="AppPlatform.Survey.Option.check(this,361707,'sbj_361707[]',0);" value="25594" id="opt_25594" name="sbj_361707[]"/>
																			<span class="option">不好说</span></label>
																		</td>
																		<td width="170"><div id="result_bar_361707_25594" style="display: block; " class="process"><div style="width: 18.928px;" class="style4" id="process_bar_361707_25594"></div></div></td>
																		<td width="110" id="process_txt_361707_25594" style="display: block; " class="black"><nobr>176,052 (11.83%)</nobr>
																		</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
													<div class="submit line" align="center">
														<input type="button" onclick="" value="提  交" class="uniformButton" id="submit_survey"/>
													</div>
												</form>
											--%></div>
										</div>
										<br />
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<!--end-->

			<!--foot-->
			<div class="footer">
				<bean:include id="queryFootInfo"
					page="/client/newsClient.do?method=queryFootInfo" />
				<bean:write name="queryFootInfo" filter="false" />
			</div>
			<!--end-->
			<!--xiaoxun-->
			<div id=sidenav style="POSITION: absolute; top: 100px; right: 0;">
				<img src="<%=basePath%>res/client/images/xiaoxun.gif" />
			</div>
	</body>
</html>