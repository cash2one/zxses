package com.agilefly.service.blogarticle.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.agilefly.bean.BlogArticle;
import com.agilefly.service.base.BaseDaoImpl;
import com.agilefly.service.blogarticle.IBlogArticleService;

@Service
@Transactional
public class BlogArticleService extends BaseDaoImpl<BlogArticle> implements IBlogArticleService {

}
