package com.qxy.bookshop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qxy.bookshop.model.LoginInfo;

@Controller
@RequestMapping("user")
public class UserInfoController {
	
	@RequestMapping("/manage")
	public ModelAndView userManage(HttpSession session){
		LoginInfo currentUser = (LoginInfo) session.getAttribute("currentUser");
		/*System.out.println(currentUser.getPassword());*/
		ModelAndView userManage = new ModelAndView("userManage");
		userManage.addObject("username",currentUser.getUsername());
		return userManage;
	}
}
