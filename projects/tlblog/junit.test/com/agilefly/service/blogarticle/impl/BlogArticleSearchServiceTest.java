package com.agilefly.service.blogarticle.impl;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.agilefly.bean.BlogArticle;
import com.agilefly.commons.QueryResult;
import com.agilefly.service.blogarticle.IBlogArticleSearchService;

public class BlogArticleSearchServiceTest {
	private static ApplicationContext cxt;
	private static IBlogArticleSearchService blogArticleSearchService;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		try {
			cxt = new ClassPathXmlApplicationContext("application*.xml");
			blogArticleSearchService = (IBlogArticleSearchService)cxt.getBean("blogArticleSearchService");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testSearch(){
		QueryResult<BlogArticle> articles = blogArticleSearchService.search("人民", 0, 5);
		for (BlogArticle article : articles.getResultlist()) {
			System.out.println(article.getArticleTitle());
			System.out.println(article.getArticleContent());
			System.out.println("****************************");
		}
	}
}
