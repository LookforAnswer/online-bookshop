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
	
	
	public int insertUserInfo(UserInfo entity) {
		return loginDao.insertUserInfo(entity);
	}

}
