package com.agilefly.bean;

import java.util.Date;

import org.compass.annotations.Index;
import org.compass.annotations.Searchable;
import org.compass.annotations.SearchableId;
import org.compass.annotations.SearchableProperty;
import org.compass.annotations.Store;


/**
 * BlogArticle entity. @author MyEclipse Persistence Tools
 */

@Searchable
public class BlogArticle  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Integer userId;
     private String articleTitle;
     private String articleContent;
     private Integer articleTypeId;
     private Date postTime;


    // Constructors

    /** default constructor */
    public BlogArticle() {
    }

	/** minimal constructor */
    public BlogArticle(Integer userId, Integer articleTypeId) {
        this.userId = userId;
        this.articleTypeId = articleTypeId;
    }
    
    /** full constructor */
    public BlogArticle(Integer userId, String articleTitle, String articleContent, Integer articleTypeId, Date postTime) {
        this.userId = userId;
        this.articleTitle = articleTitle;
        this.articleContent = articleContent;
        this.articleTypeId = articleTypeId;
        this.postTime = postTime;
    }

   
    // Property accessors
	@SearchableId
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    //不分词，存储
    @SearchableProperty(index=Index.NOT_ANALYZED,store=Store.YES)
    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    //搜索文章标题优先 分词存储
    @SearchableProperty(index=Index.ANALYZED,store=Store.YES,boost=2f)
    public String getArticleTitle() {
        return this.articleTitle;
    }
    
    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    //分词存储
    @SearchableProperty(index=Index.ANALYZED,store=Store.YES)
    public String getArticleContent() {
        return this.articleContent;
    }
    
    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent;
    }

    public Integer getArticleTypeId() {
        return this.articleTypeId;
    }
    
    public void setArticleTypeId(Integer articleTypeId) {
        this.articleTypeId = articleTypeId;
    }

    //不分词存储
    @SearchableProperty(index=Index.NOT_ANALYZED,store=Store.YES)
    public Date getPostTime() {
        return this.postTime;
    }
    
    public void setPostTime(Date postTime) {
        this.postTime = postTime;
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		final BlogArticle other = (BlogArticle) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
}