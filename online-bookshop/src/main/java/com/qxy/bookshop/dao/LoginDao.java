package com.qxy.bookshop.dao;

import org.springframework.stereotype.Repository;

import com.qxy.bookshop.model.UserInfo;

public interface LoginDao {
	
	/**
	 * 添加新用户
	 */
	public int insertUserInfo(UserInfo entity);
	
	/**
	 * 删除用户
	 * @param entity
	 */
	public void deleteUserInfo(UserInfo entity);
	
	/**
	 * 修改用户
	 * @param entity
	 */
	public void updateUserInfo(UserInfo entity);
	
	/**
	 * 查询用户
	 * @param entity
	 * @return
	 */
	public UserInfo queryByEntity(UserInfo entity);
}
