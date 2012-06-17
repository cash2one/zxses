package com.agilefly.web.action.blog;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.stereotype.Controller;
import com.agilefly.bean.BlogArticle;
import com.agilefly.service.blogarticle.IBlogArticleService;
import com.agilefly.utils.SysObj;
import com.agilefly.web.action.BaseAction;
import com.agilefly.web.form.BlogArticleForm;

/**
 * @author boleyn_renlei
 * @date Jun 14, 2012 5:08:05 PM
 */

@Controller("/blog")
public class BlogArticleAction extends BaseAction {
	@Resource
	private IBlogArticleService blogArticleService;
	
	public void setBlogArticleService(IBlogArticleService blogArticleService) {
		this.blogArticleService = blogArticleService;
	}

	/**
	 * 打开博客文章列表界面 默认不指定mothod方法名 示例：blog/blogarticle.do
	 * 默认列表显示方法调用 不可修改 或者新建一个单独的列表显示action继承Action
	 */
	//@Permission(model="sysModuleManage", privilegeValue="view")
	public ActionForward list(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		//获取博客文章列表，并传递到界面
		BlogArticleForm baf = (BlogArticleForm)form;
		
		request.setAttribute("qs", blogArticleService.getScrollDataByThread());
		
		return mapping.findForward("list");
	}
	
	/**
	 * 打开发表文章录入界面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	//@Permission(model="sysModuleManage", privilegeValue="add")
	public ActionForward addInput(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return mapping.findForward("add_input");
	}
	
	/**
	 * 发表文章
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	//@Permission(model="sysModuleManage", privilegeValue="add")
	public ActionForward add(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		BlogArticleForm baf = (BlogArticleForm)form;
		BlogArticle article = new BlogArticle();
		
		BeanUtils.copyProperties(article, baf);
		//获取编辑器内容
		article.setArticleContent(request.getParameter("editor_k"));
		
		blogArticleService.save(article);
		
		request.setAttribute("showMsg", SysObj.createAddMassageBox(""));
		return unspecified(mapping, form, request,response);
		//return mapping.findForward("pub_add_success");
	}
	
	/**
	 * 打开博客文章修改界面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	//@Permission(model="sysModuleManage", privilegeValue="update")
	public ActionForward updateInput(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String blogArticleId = request.getParameter("blogArticleId");
		BlogArticle article = blogArticleService.find(blogArticleId);
		request.setAttribute("blogArticleInfo", article);
		return mapping.findForward("update_input");
	}
	
	/**
	 * 修改博客文章
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	//@Permission(model="sysModuleManage", privilegeValue="update")
	public ActionForward update(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		BlogArticleForm baf = (BlogArticleForm)form;
		
		BlogArticle article = null;
		
		article = blogArticleService.find(baf.getId());
		
		String messageEntity = "";//article.getName();
		
		BeanUtils.copyProperties(article, baf);
		
		blogArticleService.update(article);
		
		request.setAttribute("showMsg", SysObj.createEditMassageBox(messageEntity));
		return unspecified(mapping, form, request,response);
		//return mapping.findForward("pub_add_success");
	}
	
	/**
	 * 删除博客文章
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	//@Permission(model="sysModuleManage", privilegeValue="delete")
	public ActionForward del(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] ids = request.getParameterValues("check");
		blogArticleService.delete(ids);
		//return mapping.findForward("pub_del_success");
		request.setAttribute("showMsg", SysObj.createDeleteMassageBox(ids.length, ""));
		return unspecified(mapping, form, request,response);
	}
}
