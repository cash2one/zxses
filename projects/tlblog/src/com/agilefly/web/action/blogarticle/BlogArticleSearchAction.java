package com.agilefly.web.action.blogarticle;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.stereotype.Controller;

import com.agilefly.service.blogarticle.IBlogArticleSearchService;
import com.agilefly.web.form.BlogArticleQueryForm;

@Controller("/blog/article/search")
public class BlogArticleSearchAction extends Action {
	@Resource
	IBlogArticleSearchService blogArticleSearchService;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		BlogArticleQueryForm formbean = (BlogArticleQueryForm)form;
		
		//分页传递中文参数处理
		/*if(word != null && word.length() > 0){
			System.out.println(word);
			word = new String(word.getBytes("ISO-8859-1"),"UTF-8");
			System.out.println("编码后" + word);
		}*/
		request.setAttribute("qs", blogArticleSearchService.searchByThread(formbean.getWord()));
		
		return mapping.findForward("list");
	}
}
