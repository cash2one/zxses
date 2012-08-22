package com.agilefly.service.base;


import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.agilefly.bean.SysConfig;
import com.agilefly.service.sysconfig.ISysConfigService;

public class ISysConfigServiceTest {
	private static ApplicationContext cxt;
	private static ISysConfigService sysConfigService;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		try {
			cxt = new ClassPathXmlApplicationContext("application*.xml");
			sysConfigService = (ISysConfigService)cxt.getBean("sysConfigService");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testSaveSysConfig(){
		SysConfig config = new SysConfig();
		config.setSysConfigCode("sysConfigManage");
		sysConfigService.save(config);
	}
	
	@Test
	public void testfindSysConfig(){
		SysConfig config = sysConfigService.getForTest("sysConfigManage");
		System.out.println(config);
		System.out.println(config.getSysConfigCode());
	}
}
