package com.qxy.bookshop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qxy.bookshop.model.LoginInfo;

@Controller
public class UserInfoController {
	
	@RequestMapping("userManage")
	public ModelAndView userManage(HttpSession session){
		LoginInfo currentUser = (LoginInfo) session.getAttribute("currentUser");
		ModelAndView userManage = new ModelAndView("userManage");
		userManage.addObject("username",currentUser.getUsername());
		return userManage;
	}
}
