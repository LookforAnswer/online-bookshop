package com.qxy.bookshop.service.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.w3c.dom.Entity;

import com.qxy.bookshop.model.LoginInfo;
import com.qxy.bookshop.service.impl.LoginServiceImpl;
import com.qxy.shop.util.Util;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:springApplicationContext.xml"})
public class LoginServiceTest {
	
	 @Autowired 
	private LoginServiceImpl loginservice;
	
	
	@Test
	public void testLoginInfo(){
		//addLoginInfo();
		//updateLoginInfo();
		queryLoginInfo();
	}
	
	public void updateLoginInfo(){
		LoginInfo entity = new LoginInfo();
		entity.setId("157b5a51475746caa824c2cbc8ac4840");
		entity.setEmail("1111111");
		System.out.println(loginservice.updateLoginInfo(entity));
	}
	
	public void addLoginInfo(){
		LoginInfo entity = new LoginInfo();
		entity.setId(Util.createId());
		entity.setEmail("213321");
		entity.setPassword("123456");
		
		System.out.println(loginservice.insertLoginInfo(entity));
	}
	
	public void queryLoginInfo(){
		LoginInfo entity = new LoginInfo();
		entity.setId("157b5a51475746caa824c2cbc8ac4840");
		entity.setEmail("1");
		System.out.println(loginservice.queryLoginInfoByEntity(entity).size());
	}
}
