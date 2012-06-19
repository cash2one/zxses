package com.agilefly.web.action.index;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.springframework.stereotype.Controller;
import com.agilefly.bean.SysUser;
import com.agilefly.service.systemuser.ISysUserService;
import com.agilefly.utils.BeanUtilEx;
import com.agilefly.utils.CipherUtil;
import com.agilefly.web.action.BaseAction;
import com.agilefly.web.form.SysUserForm;

@Controller("/index")
public class IndexAction extends BaseAction{
	@Resource
	private ISysUserService sysUserService;
	
	/**
	 * 跳转到注册界面
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward signup(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return mapping.findForward("signup");
	}
	
	/**
	 * 用户注册
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	public ActionForward signupUser(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		SysUserForm suf = (SysUserForm) form;
		
		if(!SysUserForm.validateImageFileType(suf.getUserHeadpic())){
			System.out.println(suf.getUserHeadpic().getContentType());
			request.setAttribute("message", "图片格式不正确");
			return mapping.findForward("message");
		}
		
		SysUser sysUser = new SysUser();
		
		BeanUtilEx.copyProperties(sysUser, suf);
		
		//MD5加密保存
		sysUser.setPassword(CipherUtil.generatePassword(suf.getPassword()));
		sysUser.setUserLoginip(request.getRemoteAddr());
		sysUser.setUserRegtime(new Date());
		sysUser.setUserLogintime(new Date());
		
		//需要审批
		sysUser.setApproveStatus((byte)0);
		//默认启用
		sysUser.setAvailable((byte)1);
		//有效记录
		sysUser.setRecordStatus((byte)1);
		
		if(suf.getUserHeadpic()!=null && suf.getUserHeadpic().getFileSize()>0){
			SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd/HH");
			String logopathdir = "/images/headpic/"+ dateformat.format(new Date());//构建图片保存的目录
			//得到图片保存目录的真实路径
			String logorealpathdir = request.getSession().getServletContext().getRealPath(logopathdir);
			File logosavedir = new File(logorealpathdir);
			if(!logosavedir.exists()) logosavedir.mkdirs();//如果目录不存在就创建
			String ext = suf.getUserHeadpic().getFileName().substring(suf.getUserHeadpic().getFileName().lastIndexOf('.'));
			String imagename = UUID.randomUUID().toString()+ ext;//构建文件名称
			FileOutputStream fileoutstream = new FileOutputStream(new File(logorealpathdir, imagename));
			fileoutstream.write(suf.getUserHeadpic().getFileData());
			fileoutstream.close();
			String logopath = logopathdir+"/"+imagename;
			sysUser.setUserHeadpic(logopath);
		}		
		sysUserService.save(sysUser);
		//
		request.setAttribute("message", "品牌添加成功");
	//	request.setAttribute("urladdress", SiteUrl.readUrl("control.brand.list"));
		//return mapping.findForward("message");
		/*
		BrandForm formbean = (BrandForm) form;
		if(!BrandForm.validateImageFileType(formbean.getLogofile())){
			System.out.println(formbean.getLogofile().getContentType());
			request.setAttribute("message", "图片格式不正确");
			return mapping.findForward("message");
		}
		Brand brand = new Brand();
		brand.setName(formbean.getName());
		*/
		
		return mapping.findForward("signup");
	}
}
