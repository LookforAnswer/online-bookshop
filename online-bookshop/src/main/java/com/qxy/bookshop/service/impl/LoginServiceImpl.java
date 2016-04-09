package com.qxy.bookshop.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qxy.bookshop.dao.LoginDao;
import com.qxy.bookshop.model.LoginInfo;
import com.qxy.bookshop.service.LoginService;
import com.qxy.shop.util.Util;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDao loginDao;
	
	
	public int insertLoginInfo(LoginInfo entity){
		entity.setId(Util.createId());
		return loginDao.insertLoginInfo(entity);
	}


	public boolean login(LoginInfo entity) {
		List<LoginInfo> list= (List<LoginInfo>) loginDao.queryByEntity(entity); 
		if(list != null && list.size()>0){
			return true;
		}
		else{
			return false;
		}
	}


	public int updateLoginInfo(LoginInfo entity) {
		return loginDao.updateLoginInfo(entity);
	}


	public List<LoginInfo> queryLoginInfoByEntity(LoginInfo entity) {
		return (List<LoginInfo>) loginDao.queryByEntity(entity);
	}

}
