package com.qxy.bookshop.service;

import java.util.List;

import com.qxy.bookshop.model.LoginInfo;

public interface LoginService {
	
	//添加新用户
	public int insertLoginInfo(LoginInfo entity);
	
	//修改登录信息
	public int updateLoginInfo(LoginInfo entity);
	
	//查询登陆信息
	public List<LoginInfo> queryLoginInfoByEntity(LoginInfo entity);
	
	//验证登陆信息
	public boolean login(LoginInfo entity,String username);
	
	//注册时，验证该邮箱是否已被注册
	public boolean isExistEmail(String email);
	
	//注册时，验证该手机号码是否已被注册
	public boolean isExistCellphone(String Cellphone);
}
