package com.qxy.bookshop.service;

import com.qxy.bookshop.model.UserInfo;

public interface LoginService {
	public int insertUserInfo(UserInfo entity);
	
	public boolean login(String username,String password);
}
