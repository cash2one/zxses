package com.lcweb.struts.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;

import com.lcweb.base.util.PageList;
import com.lcweb.base.util.SysObj;
import com.lcweb.bean.pojo.BasicPerson;
import com.lcweb.bean.pojo.FrontMessage;
import com.lcweb.bean.pojo.FrontUser;
import com.lcweb.commons.CheckRight;
import com.lcweb.commons.CipherUtil;
import com.lcweb.service.front.FrontLoginService;
import com.lcweb.service.message.MessageService;
import com.lcweb.struts.form.FrontUserForm;
import com.lcweb.struts.form.MessageForm;

public class MessageAction extends DispatchAction {
	private MessageService messageService;
	private CheckRight checkRight;
	
	/**
	 * 查询留言列表信息（审批后的留言）
	 */
	public ActionForward queryMessage(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		/*BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		boolean right = checkRight.moduleOperationRight(basicPerson.getPersonAccount(), "member", "select");
		if (!right) {
			return mapping.findForward("noright");
		}*/
		String sql = "from FrontMessage c where 1=1 and c.approveStatus = 1 ";
		String sqlCount = "select count(*) from FrontMessage c where 1=1 and c.approveStatus = 1";
		
		String path = request.getContextPath() + "/front/messagemanage.do?method=queryMessage";
		String pagesize = request.getParameter("pagesize");
		String currentPage = request.getParameter("currentPage");

		PageList pageList = PageList.page(sqlCount, sql, currentPage, pagesize, path, messageService,
				"messageForm");
		request.setAttribute("pageList", pageList);
		
		return mapping.findForward("messageIndex");
	}
	
	/**
	 * 新增留言
	 */
	public ActionForward addMessage(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		MessageForm userForm = (MessageForm)form;
		FrontMessage message = new FrontMessage();
		
		FrontUser user = (FrontUser)messageService.queryObjectById(FrontUser.class, userForm.getFrontUserId());
		
		message.setFrontUser(user);
		message.setMessageContent(userForm.getMessageContent());
		message.setMessageDate(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
		message.setFacePic(userForm.getFacePic());
		message.setHeadPic(userForm.getHeadPic());
		message.setApproveStatus((short)0);
		message.setTop((short)0);
		
		messageService.saveObject(message);
		return new ActionForward("/");
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	public void setCheckRight(CheckRight checkRight) {
		this.checkRight = checkRight;
	}
}
