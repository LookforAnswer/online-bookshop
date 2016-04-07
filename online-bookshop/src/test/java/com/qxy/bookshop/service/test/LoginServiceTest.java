package com.qxy.bookshop.service.test;

import java.util.UUID;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qxy.bookshop.model.UserInfo;
import com.qxy.bookshop.service.LoginService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:com.springApplicationContext.xml") 
public class LoginServiceTest {
	
	 @Autowired 
	private LoginService loginservice;
	
	
	@Test
	public void addUserInfo(){
		UserInfo entity = new UserInfo();
		entity.setId(getId());
		entity.setUsername("root");
		entity.setPassword("123456");
		
		System.out.println(loginservice.insertUserInfo(entity));
	}
	
	public String getId(){
		String str = UUID.randomUUID().toString();
		StringBuilder result = new StringBuilder();
		for(int i=0;i<str.length();i++){
			if('-' == str.charAt(i))
				continue;
			result.append(str.charAt(i));
		}
		return result.toString();
	}
}
