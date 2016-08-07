package com.qxy.bookshop.controller;

import com.qxy.bookshop.model.LoginInfo;
import com.qxy.bookshop.service.impl.LoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

/**
 * 登陆相关的Controller
 * @author fing
 *
 */
@Controller
@RequestMapping("/")
@SessionAttributes("currentUser")
public class LoginController {
	
	@Autowired
	private LoginServiceImpl loginService;
	
	@RequestMapping("")
	public ModelAndView index(HttpSession session){
		ModelAndView index = new ModelAndView("index");
		LoginInfo currentUser = (LoginInfo) session.getAttribute("currentUser");
		if(currentUser!= null){
			index.addObject("username",currentUser.getUsername());
		}
		return index;
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
	 * 登陆时请求的Controller
	 */
	@RequestMapping(value="list",method=RequestMethod.POST)
	public ModelAndView loginIn(LoginInfo entity,ModelMap model){
		if(entity != null){
			if(loginService.login(entity)){//登录成功
				LoginInfo currentUser = loginService.queryLoginInfoByEntity(entity).get(0);
				model.addAttribute("currentUser",currentUser);
				ModelAndView index = new ModelAndView("index");
				index.addObject("username",entity.getUsername());
				return  index;
			}
			else{//用户名和密码不匹配
				ModelAndView error = new ModelAndView("login");
				error.addObject("errorMessage","用户名和密码不匹配！");
				return  error;
			}
			
		}
		else{//登录信息不不完整
			ModelAndView error = new ModelAndView("login");
			error.addObject("errorMessage","登录信息不不完整！");
			return  error;
		}
	}
	
	/**
	 * 注册时请求的Controller
	 */
	@RequestMapping(value="addUser",method=RequestMethod.POST)
	public ModelAndView addUser(LoginInfo entity){
		ModelAndView login = new ModelAndView("login");
		
		loginService.insertLoginInfo(entity);
		return login;
	}
	
	@RequestMapping(value="loginout",method=RequestMethod.GET)
	public ModelAndView loginout(ModelMap map,SessionStatus sessionStatus){
		//session.invalidate();
		LoginInfo currentUser = (LoginInfo) map.get("currentUser");
		if(currentUser != null){
			sessionStatus.setComplete();
		}
		return new ModelAndView("login");
	}
	
	
	/**
	 * 
	 */
	@RequestMapping(value="isExistUsername",method = RequestMethod.POST)
	public @ResponseBody String isExistEmail(String email){//
		String result = "";
		if(loginService.isExistUsername(email)){
			result="1";
		}
		else{
			result="0";
		}
		return result;
	}
}
