package com.agilefly.web.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agilefly.service.blogarticle.IBlogArticleSearchService;
import com.agilefly.web.form.BlogArticleQueryForm;

public class ArticleSearchServlet extends HttpServlet {

	public ArticleSearchServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String word = request.getParameter("word");
		System.out.println(word);
		
		//分页传递中文参数处理
		if(word != null && word.length() > 0){
			System.out.println(word);
			word = new String(word.getBytes("ISO-8859-1"),"UTF-8");
			System.out.println("编码后" + word);
		}
		/*
		request.setAttribute("qs", blogArticleSearchService.searchByThread(word));
		
		request.getRequestDispatcher("list").forward(request, response);*/
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
