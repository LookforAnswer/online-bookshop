package com.qxy.bookshop.model;

import java.io.Serializable;

public class LoginInfo implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String id;
	private String username;
	private String password;
	private byte[] image;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	
}
