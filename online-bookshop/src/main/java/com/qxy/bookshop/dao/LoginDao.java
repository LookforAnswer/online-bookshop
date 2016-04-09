package com.qxy.bookshop.dao;

import java.util.List;

import com.qxy.bookshop.model.LoginInfo;

public interface LoginDao {
	
	/**
	 * 添加新用户
	 */
	public int insertLoginInfo(LoginInfo entity);
	
	/**
	 * 删除用户
	 * @param entity
	 */
	public void deleteLoginInfo(LoginInfo entity);
	
	/**
	 * 修改用户
	 * @param entity
	 */
	public int updateLoginInfo(LoginInfo entity);
	
	/**
	 * 查询用户
	 * @param entity
	 * @return
	 */
	public List<LoginInfo> queryByEntity(LoginInfo entity);
	
}
