package com.qxy.bookshop.service;

import java.util.List;

import com.qxy.bookshop.model.LoginInfo;

public interface LoginService {
	public int insertLoginInfo(LoginInfo entity);
	
	public int updateLoginInfo(LoginInfo entity);
	
	public List<LoginInfo> queryLoginInfoByEntity(LoginInfo entity);
	
	public boolean login(LoginInfo entity);
}
