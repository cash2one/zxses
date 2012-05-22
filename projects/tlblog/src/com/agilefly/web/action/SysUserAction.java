package com.agilefly.web.action;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.stereotype.Controller;

import com.agilefly.bean.SysRole;
import com.agilefly.bean.SysUser;
import com.agilefly.service.sysrole.ISysRoleService;
import com.agilefly.service.systemuser.ISysUserService;
import com.agilefly.utils.SysObj;
import com.agilefly.web.form.SysUserForm;

/**
 * @author boleyn_renlei
 * @date May 14, 2012 4:33:16 PM
 * 系统用户管理
 */
@Controller("/view/sysuser")
public class SysUserAction extends BaseAction{
	@Resource
	private ISysUserService sysUserService;
	
	@Resource
	private ISysRoleService sysRoleService;
	
	/**
	 * 打开系统用户管理主界面
	 */
	@Permission(model="sysUserManage", privilegeValue="view")
	public ActionForward list(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		//获取用户列表，并传递到界面
		SysUserForm maf = (SysUserForm)form;
		
		//int parentId = maf.getParentId();
		//request.setAttribute("qs", sysUserService.getScrollDataByThread(parentId == 0 ? "o.parent is null" : "o.parent.id = " + parentId, null));
		request.setAttribute("qs", sysUserService.getScrollDataByThread());
		
		return mapping.findForward("list");
	}
	
	/**
	 * 打开用户管理录入界面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Permission(model="sysUserManage", privilegeValue="add")
	public ActionForward addInput(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return mapping.findForward("add_input");
	}
	
	/**
	 * 添加用户
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Permission(model="sysUserManage", privilegeValue="add")
	public ActionForward add(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		SysUserForm suf = (SysUserForm)form;
		SysUser user = new SysUser();
		
		BeanUtils.copyProperties(user, suf);
		
		sysUserService.save(user);
		
		request.setAttribute("showMsg", SysObj.createAddMassageBox(""));
		return unspecified(mapping, form, request,response);
		//return mapping.findForward("pub_add_success");
	}
	
	/**
	 * 打开用户管理修改界面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Permission(model="sysUserManage", privilegeValue="update")
	public ActionForward updateInput(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String sysUserId = request.getParameter("sysUserId");
		SysUser user = sysUserService.find(sysUserId);
		request.setAttribute("sysUserInfo", user);
		return mapping.findForward("update_input");
	}
	
	/**
	 * 修改用户
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Permission(model="sysUserManage", privilegeValue="update")
	public ActionForward update(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		SysUserForm suf = (SysUserForm)form;
		
		SysUser user = null;
		
		user = sysUserService.find(suf.getId());
		
		String messageEntity = user.getUsername();
		
		BeanUtils.copyProperties(user, suf);
		
		sysUserService.update(user);
		
		request.setAttribute("showMsg", SysObj.createEditMassageBox(messageEntity));
		return unspecified(mapping, form, request,response);
		//return mapping.findForward("pub_add_success");
	}
	
	/**
	 * 删除用户
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Permission(model="sysUserManage", privilegeValue="delete")
	public ActionForward del(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String[] ids = request.getParameterValues("check");
		sysUserService.delete(ids);
		//return mapping.findForward("pub_del_success");
		request.setAttribute("showMsg", SysObj.createDeleteMassageBox(ids.length, ""));
		return unspecified(mapping, form, request,response);
	}
	
	/**
	 * 打开分配角色界面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Permission(model="sysUserManage", privilegeValue="assignRole")
	public ActionForward assignRoleInput(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		String sysUserId = request.getParameter("sysUserId");
		SysUser user = sysUserService.find(sysUserId);
		request.setAttribute("sysUserInfo", user);
		//获得所有角色
		request.setAttribute("qs", sysRoleService.getScrollData());
		
		//获得用户拥护的所有角色
		request.setAttribute("sysUserRoles", user.getSysRoles());
		
		return mapping.findForward("assignRole_input");
	}
	
	/**
	 * 分配角色
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@Permission(model="sysUserManage", privilegeValue="assignRole")
	public ActionForward assignRole(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		SysUserForm suf = (SysUserForm)form;
		
		SysUser user = null;
		
		user = sysUserService.find(suf.getId());
		
		//清除所有角色 重新添加角色
		user.getSysRoles().clear();
		
		if(suf.getRoleIds()!=null){
			for(Integer id : suf.getRoleIds()){
				user.addSysRole(new SysRole(id));
			}
		}
		sysUserService.update(user);
		String messageEntity = user.getUsername();
		
		request.setAttribute("showMsg", SysObj.createMassageBox("为["+messageEntity+"]分配权限成功！"));
		return unspecified(mapping, form, request,response);
	}
}
