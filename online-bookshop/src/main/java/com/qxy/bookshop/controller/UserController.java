package com.qxy.bookshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qxy.bookshop.service.impl.LoginServiceImpl;

@Controller
@RequestMapping("/")
public class UserController {
	
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
	
	@RequestMapping("login-in")
	public ModelAndView loginIn(String username,String password){
		if(loginService.login(username,password)){
			return  new ModelAndView("success");
		}
		else{
			return  new ModelAndView("login");
		}
	}
}
