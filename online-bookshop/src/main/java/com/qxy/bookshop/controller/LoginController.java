package com.qxy.bookshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.qxy.bookshop.model.LoginInfo;
import com.qxy.bookshop.service.impl.LoginServiceImpl;

@Controller
@RequestMapping("/")
public class LoginController {
	
	@Autowired
	private LoginServiceImpl loginService;
	
	@RequestMapping("")
	public ModelAndView index(){
		ModelAndView login = new ModelAndView("index");
		return login;
	}
	
	@RequestMapping("login")
	public ModelAndView login(){
		ModelAndView login = new ModelAndView("login");
		return login;
	}
	
	@RequestMapping("register")
	public ModelAndView register(){
		ModelAndView login = new ModelAndView("register");
		return login;
	}
	
	@RequestMapping("footer")
	public ModelAndView footer(){
		ModelAndView footer = new ModelAndView("commons/footer");
		return footer;
	}
	
	/*
	 * 跳转到首页
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	public ModelAndView loginIn(LoginInfo entity){
		if(loginService.login(entity)){//登陆成功
			return  new ModelAndView("listBook");
		}
		else{//用户名和密码不匹配
			ModelAndView error = new ModelAndView("login");
			error.addObject("errorMessage","用户名和密码不匹配！");
			return  error;
		}
	}
	
	/**
	 * 
	 */
	@RequestMapping(value="addUser",method=RequestMethod.POST)
	public ModelAndView addUser(LoginInfo entity){
		ModelAndView login = new ModelAndView("login");
		loginService.insertLoginInfo(entity);
		return login;
	}
}
