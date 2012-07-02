package com.agilefly.service.sysblogtype;

import java.util.List;

import com.agilefly.bean.SysType;
import com.agilefly.service.base.BaseDao;

/**
 * @author boleyn_renlei
 * @date Jun 20, 2012 2:19:33 AM
 */
public interface ISysBlogTypeService extends BaseDao<SysType> {
	/**
	 * 根据用户身份编码(typecode-->教师[teacher]、学生[student])查询文章类型
	 * (教师和学生发表文章选择的类别不同)
	 * @param parentId
	 * @return
	 */
	public List<SysType> searchSysBlogTypes(String typecode);
}
