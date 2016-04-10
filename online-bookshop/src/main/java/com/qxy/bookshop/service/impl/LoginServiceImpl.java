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


	public boolean login(LoginInfo entity,String username) {
		
	LoginInfo entityForEmail = new LoginInfo();
		entityForEmail.setEmail(username);
		entityForEmail.setPassword(entity.getPassword());
		
		LoginInfo entityForCellphone = new LoginInfo();
		entityForCellphone.setEmail(null);
		entityForCellphone.setCellphone(username);
		entityForCellphone.setPassword(entity.getPassword());
		
		List<LoginInfo> listByEmail = (List<LoginInfo>) loginDao.queryByEntity(entityForEmail);
		List<LoginInfo> listByCellphone = (List<LoginInfo>) loginDao.queryByEntity(entityForCellphone);
		
		if((listByEmail != null && listByEmail.size()>0) || (listByCellphone != null && listByCellphone.size()>0)){
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
		return loginDao.queryByEntity(entity);
	}
	
	
	public boolean isExistEmail(String email) {
		if(email == null || "".equals(email)){
			return false;
		}
		LoginInfo entity = new LoginInfo();
		entity.setEmail(email);
		List<LoginInfo> list = loginDao.queryByEntity(entity);
		if(list != null && list.size()>0){
			return true;
		}
		else{
			return false;
		}
	}


	public boolean isExistCellphone(String cellphone) {
		LoginInfo entity = new LoginInfo();
		entity.setCellphone(cellphone);
		List<LoginInfo> list = loginDao.queryByEntity(entity);
		if(list != null && list.size()>0){
			return true;
		}
		else{
			return false;
		}
	}


	

}
