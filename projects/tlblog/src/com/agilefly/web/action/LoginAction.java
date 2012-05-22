/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.agilefly.web.action;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.springframework.stereotype.Controller;

import com.agilefly.bean.SysModule;
import com.agilefly.bean.SysPrivilege;
import com.agilefly.bean.SysRole;
import com.agilefly.bean.SysUser;
import com.agilefly.commons.web.WebUtils;
import com.agilefly.service.sysmodule.ISysModuleService;
import com.agilefly.service.systemuser.ISysUserService;
import com.agilefly.utils.CipherUtil;

@Controller("/sys/login")  
public class LoginAction extends DispatchAction {
	@Resource
	private ISysUserService sysUserService;
	
	@Resource
	private ISysModuleService sysModuleService;

	public ActionForward login(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		String loginname = request.getParameter("username");
		String password = request.getParameter("password");
		String imagecode = request.getParameter("imagecode");
		//检查验证码
		Object randcode = request.getSession().getAttribute("rand");
		if(randcode == null){
			//页面过期，需要刷新
			WebUtils.writeResponse(response, "codeFail");
			return null;
		}
		password = CipherUtil.generatePassword(password);
		SysUser user = sysUserService.findByUnamePass(loginname, password);
		if(user != null){
			if (!randcode.toString().equals(imagecode)) {
				WebUtils.writeResponse(response, "codeFail");
				return null;
			}
			request.getSession().setAttribute("sysUserInfo",user);
			
			Set<SysRole> sysRoles = user.getSysRoles();
			//所有查询权限集合
			Map<String,SysPrivilege> sysPrivileges = new HashMap<String, SysPrivilege>();
			for (SysRole sysRole : sysRoles) {
				Set<SysPrivilege> rolePrivileges = sysRole.getSysPrivileges();
				for (SysPrivilege sysPrivilege : rolePrivileges) {
					//获得所有具有查询权限的所有模块编号
					if("view".equals(sysPrivilege.getId().getPrivilegeValue())){
						sysPrivileges.put(sysPrivilege.getId().getModel(), sysPrivilege);
					}
				}
			}
			
			//获得所有的一级模块
			LinkedHashMap<String, String> orderby = new LinkedHashMap<String, String>();
			orderby.put("orderNo", "asc");
			List<SysModule> sysFirstModules = sysModuleService.getScrollData("o.parent is null", null, orderby).getResultlist();
			
			//根据用户查看权限设置模块是否显示
			for (SysModule sysFirstModule : sysFirstModules) {
				Set<SysModule> sysSecondModules  = sysFirstModule.getChildren();
				for (SysModule sysSecondModule : sysSecondModules) {
					 for (Map.Entry<String, SysPrivilege> m : sysPrivileges.entrySet()) {
						 if(m.getValue().getId().getModel().equals(sysSecondModule.getSn())){
							 sysSecondModule.setIsDisplay(true);
							 sysFirstModule.setIsDisplay(true);
						 }
					 }
				}
			}
			
			List<SysModule> viewPrivileges = new ArrayList<SysModule>();
			//获得所有具有查看权限的一级模块
			for (SysModule sysFirstModule : sysFirstModules) {
				if(sysFirstModule.getIsDisplay()){
					viewPrivileges.add(sysFirstModule);
				}
			}
			request.getSession().setAttribute("sysFirstModules", viewPrivileges);
			
			WebUtils.writeResponse(response, user.getUsername());
			return null;
		}else {
			WebUtils.writeResponse(response, "fail");
			return null;
		}
	}

	/**
	 * 跳转到登录界面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	public ActionForward toLogin(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		return mapping.findForward("login");
	}
	
	
	/**
	 * 至修改密码页面
	 */
	/*public ActionForward toupdatePassword(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		request.setAttribute("basicPerson", basicPerson);
		return mapping.findForward("toupdate");
	}*/

	/**
	 * 修改密码
	 */
	/*public ActionForward updatePassword(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		String password = request.getParameter("password");
		// MD5加密类
		if ("admin".equals(basicPerson.getPersonAccount())) {
			SysAdmin admin = (SysAdmin) loginServiceDao.queryObjectList("from SysAdmin where adminName = 'admin'").get(
					0);
			admin.setPassword(CipherUtil.generatePassword(password));
			loginServiceDao.updateObject(admin);

		} else {
			basicPerson.setPassword(CipherUtil.generatePassword(password));
			loginServiceDao.updateObject(basicPerson);
		}
		try {
			response.getWriter().write("true");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}*/

	/**
	 * 查询密码是否正确修改密码
	 */
	@SuppressWarnings("static-access")
	/*public ActionForward checkPassword(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		BasicPerson basicPerson = (BasicPerson) request.getSession().getAttribute("logininfo");
		String password = request.getParameter("password");
		// MD5加密类
		CipherUtil util = new CipherUtil();
		boolean flag = loginServiceDao.findByUnamePass(request, basicPerson.getPersonAccount(), util
				.generatePassword(password));
		if (!flag) {
			flag = loginServiceDao.findByUnamePass(request, basicPerson.getPersonAccount(), password);
		}
		try {
			if (flag) {
				response.getWriter().write("true");
			} else {
				response.getWriter().write("false");
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}*/

	public ActionForward loginOut(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		request.getSession().removeAttribute("sysUserInfo");
		request.getSession().removeAttribute("sysFirstModules");
		request.getSession().invalidate();
		return mapping.findForward("login");
	}



	public ActionForward loginIndex(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		return mapping.findForward("loginindex");
	}

	/**
	 * 获得所有一级模块
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public ActionForward topList(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		request.setAttribute("date", sdf.format(date) + " " + getWeekOfDate());
		return mapping.findForward("top");
	}

	public String getWeekOfDate() {
		String[] weekDays = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" };
		Calendar cal = Calendar.getInstance();
		int w = cal.get(Calendar.DAY_OF_WEEK) - 1;
		if (w < 0) {
			w = 0;
		}
		return weekDays[w];
	}

	@SuppressWarnings("unchecked")
	public ActionForward leftList(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		String module_id = request.getParameter("module_id");
		List<SysModule> modules = new ArrayList<SysModule>();
		List<SysModule> sysFirstModules = (List<SysModule>)request.getSession().getAttribute("sysFirstModules");
		if ((module_id == null) || "".equals(module_id)) {
			//设置默认第一个第一级菜单id
			if(sysFirstModules.size() > 0){
				module_id = "" + sysFirstModules.get(0).getId();
			}else{
				return mapping.findForward("left");
			}
		}
		for (SysModule sysModule : sysFirstModules) {
			if(module_id.equals(String.valueOf(sysModule.getId()))){
				request.setAttribute("sysFirstModuleTitle", sysModule.getName());
				request.setAttribute("sysSecondModules", sysModule.getChildren());
				break;
			}
		}
		return mapping.findForward("left");
	}
	
	public ActionForward right(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		return mapping.findForward("right");
	}
	
	public ActionForward middle(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) {
		return mapping.findForward("middle");
	}
	
	public static void main(String[] args) {
		System.out.println(CipherUtil.generatePassword("boleyn"));
	}
}