package com.lcweb.struts.action;

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
import com.lcweb.bean.pojo.VoteItems;
import com.lcweb.bean.pojo.VoteTitle;
import com.lcweb.commons.CheckRight;
import com.lcweb.service.vote.VoteService;
import com.lcweb.struts.form.VoteForm;

public class VoteManageAction extends DispatchAction {
	private VoteService voteService;
	private CheckRight checkRight;
	
	/**
	 * 查询留言列表信息(后台管理)
	 */
	public ActionForward queryVoteTitle(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		boolean right = checkRight.moduleOperationRight(basicPerson.getPersonAccount(), "vote", "select");
		if (!right) {
			return mapping.findForward("noright");
		}
		String sql = "from VoteTitle c where 1=1 order by c.voteDate desc";
		String sqlCount = "select count(*) from VoteTitle c where 1=1 ";
		
		String path = request.getContextPath() + "/view/votemanage.do?method=queryVoteTitle";
		String pagesize = request.getParameter("pagesize");
		String currentPage = request.getParameter("currentPage");

		PageList pageList = PageList.page(sqlCount, sql, currentPage, pagesize, path, voteService,
				"voteForm");
		request.setAttribute("pageList", pageList);
		
		return mapping.findForward("voteList");
	}
	
	/**
	 * 跳转到新增投票主题界面
	 */
	public ActionForward toAddVoteTitle(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		boolean right = checkRight.moduleOperationRight(basicPerson.getPersonAccount(), "vote", "add");
		if (!right) {
			return mapping.findForward("noright");
		}
		return mapping.findForward("voteTitleAdd");
	}
	
	/**
	 * 新增投票主题
	 */
	public ActionForward addVoteTitle(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		boolean right = checkRight.moduleOperationRight(basicPerson.getPersonAccount(), "vote", "add");
		if (!right) {
			return mapping.findForward("noright");
		}
		VoteForm voteForm = (VoteForm) form;
		VoteTitle voteTitle = new VoteTitle();
		voteTitle.setVoteDate(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
		voteTitle.setVoteName(voteForm.getVoteName());
		voteTitle.setVoteType(voteForm.getVoteType());
		voteService.saveObject(voteTitle);
		
		for (int i = 0; i < voteForm.getItemName().length; i++) {
			VoteItems items = new VoteItems();
			items.setItemName(voteForm.getItemName()[i]);
			items.setVoteTitle(voteTitle);
			items.setItemBallot(0);
			voteService.saveObject(items);
		}
		request.setAttribute("showMsg", SysObj.createAddMassageBox(""));
		return queryVoteTitle(mapping, form, request, response);
	}
	
	/**
	 * 删除投票主题
	 */
	public ActionForward deleteVoteTitle(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		boolean right = checkRight.moduleOperationRight(basicPerson.getPersonAccount(), "message", "delete");
		if (!right) {
			return mapping.findForward("noright");
		}
		String[] ids = request.getParameterValues("check");
		voteService.deleteVoteTitles(ids);
		request.setAttribute("showMsg", SysObj.createDeleteMassageBox(ids.length,""));
		return queryVoteTitle(mapping,form,request,response);
	}
	
	/**
	 * 删除投票选项
	 */
	public ActionForward deleteVoteItem(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		boolean right = checkRight.moduleOperationRight(basicPerson.getPersonAccount(), "message", "delete");
		if (!right) {
			return mapping.findForward("noright");
		}
		String[] ids = request.getParameterValues("check");
		voteService.deleteVoteTitles(ids);
		request.setAttribute("showMsg", SysObj.createDeleteMassageBox(ids.length,""));
		return queryVoteTitle(mapping,form,request,response);
	}
	
	/**
	 * 查询投票主题下的投票选项
	 */
	public ActionForward queryVoteItems(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		/*BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		boolean right = checkRight.moduleOperationRight(basicPerson.getPersonAccount(), "message", "delete");
		if (!right) {
			return mapping.findForward("noright");
		}*/
		String voteId = request.getParameter("voteId");
		VoteTitle voteTitle = (VoteTitle)voteService.queryObjectById(VoteTitle.class, Long.valueOf(voteId));
		request.setAttribute("voteTitleInfo", voteTitle);
		return mapping.findForward("voteTitleDetails");
	}

	/**
	 * 查询留言列表信息(前台)
	 */
	public ActionForward queryVoteList(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		String sql = "from VoteTitle c where 1=1 order by c.voteDate desc";
		String sqlCount = "select count(*) from VoteTitle c where 1=1 ";
		
		String path = request.getContextPath() + "/front/vote.do?method=queryVoteList";
		String pagesize = request.getParameter("pagesize");
		String currentPage = request.getParameter("currentPage");

		PageList pageList = PageList.page(sqlCount, sql, currentPage, pagesize, path, voteService,
				"voteForm");
		request.setAttribute("pageList", pageList);
		//按照日期查询最新的投票
		VoteTitle title = voteService.queryNewVoteTitle();
		request.setAttribute("voteTitle", title);
		
		return mapping.findForward("voteFrontList");
	}
	
	public void setVoteService(VoteService voteService) {
		this.voteService = voteService;
	}

	public void setCheckRight(CheckRight checkRight) {
		this.checkRight = checkRight;
	}
}
