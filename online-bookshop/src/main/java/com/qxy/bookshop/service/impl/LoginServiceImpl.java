package com.qxy.bookshop.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qxy.bookshop.dao.LoginDao;
import com.qxy.bookshop.model.UserInfo;
import com.qxy.bookshop.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDao loginDao;
	
	
	public int insertUserInfo(UserInfo entity){
		return loginDao.insertUserInfo(entity);
	}


	public boolean login(String username, String password) {
		UserInfo entity = new UserInfo();
		entity.setUsername(username);
		String str1 = loginDao.queryByUsername(entity).getPassword(); 
		if(str1.trim().equals(password)){
			return true;
		}
		else{
			return false;
		}
	}

}
