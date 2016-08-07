package com.qxy.bookshop.controller;

import com.qxy.bookshop.model.LoginInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("book")
public class BookController {
	
	@RequestMapping("cart")
	public ModelAndView userManage(HttpSession session){
		LoginInfo currentUser = (LoginInfo) session.getAttribute("currentUser");
		/*System.out.println(currentUser.getPassword());*/
		ModelAndView userManage = new ModelAndView("userManage");
		userManage.addObject("username",currentUser.getUsername());
		return userManage;
	}
}
