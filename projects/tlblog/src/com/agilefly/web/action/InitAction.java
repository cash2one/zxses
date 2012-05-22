package com.agilefly.web.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.stereotype.Controller;

import com.agilefly.bean.SysPrivilege;
import com.agilefly.service.sysprivilege.ISysPrivilegeService;

/**
 * @author boleyn_renlei
 * @date May 18, 2012 10:39:46 PM
 */
@Controller("/view/systeminit")
public class InitAction extends Action{
	@Resource ISysPrivilegeService sysPrivilegeService;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		initSysPrivilege();
		//request.setAttribute("showMsg", SysObj.SystemInit());
		request.setAttribute("message", "初始化成功");
		request.setAttribute("urladdress", "login.do?method=toLogin");
		return mapping.findForward("message");
	}
	
	/**
	 * 添加系统权限
	 */
	private void initSysPrivilege(){
		if(sysPrivilegeService.getCount() == 0){
			List<SysPrivilege> sysPrivileges = new ArrayList<SysPrivilege>();
			sysPrivileges.add(new SysPrivilege("department","view","部门查看"));
			sysPrivileges.add(new SysPrivilege("department","add","部门新增"));
			sysPrivileges.add(new SysPrivilege("department","update","部门修改"));
			sysPrivileges.add(new SysPrivilege("department","delete","部门删除"));
			sysPrivilegeService.batchSave(sysPrivileges);
		}
	}
}
