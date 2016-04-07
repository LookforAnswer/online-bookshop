package com.qxy.bookshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class UserController {
	
	@RequestMapping("")
	public ModelAndView index(){
		ModelAndView login = new ModelAndView("index");
		return login;
	}
	
	@RequestMapping("login")
	public ModelAndView loginModelView(){
		ModelAndView login = new ModelAndView("login");
		return login;
	}
	
}
