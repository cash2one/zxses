package com.agilefly.service.systemuser;

import com.agilefly.bean.SysUser;
import com.agilefly.service.base.BaseDao;

/**
 * @author boleyn_renlei
 * @date May 18, 2012 10:39:16 PM
 */
public interface ISysUserService extends BaseDao<SysUser> {
	public SysUser findByUnamePass(String username,String password);
}
