<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="Shortcut Icon" href="images/bookstore-logo.png">
    <title>登录首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/login.css"/>
	<script type="text/javascript">
	function result(){
		var name = "${attr.message}";
		if(name=="failed"){
			alert("您输入的用户名或密码不正确！");
		}
	}
	
	window.onload = function(){
		result();
	};	
	</script>
  </head>
  
  <body>
    <div class="body">
    	<div class="header">
	    	<div class="header-logo">
	    		<img alt="" src="images/bookstore-logo.png"/>
	    	</div>
	    </div>
	    <div class="body-bg">
	    	<img alt="" src="images/login-bg.png"/>
	    </div>
    	<div class="body-login-container">
    		<div class="login-title">
    			用户登录
    		</div>
    		<form action="login-in" method="Post">
    			<div class="login-username">
    				<span>用户名</span><input type="text" name="username"/>
    			</div>
    			<div class="login-password">
    				<span>密码</span><input type="password" name="password"/>
    			</div>
    			<div class="remember-password" >
    				<input type="checkbox" value="" class="checkbox-remember"/>
    				<span>记住密码</span></div>
    			<div class="login-sub">
    				<input class="login-submit" type="submit" value="登录" />
    			</div>
    		</form>
    		<a href="register" class="register">用户注册</a>
    	</div>
    	<div class="footer">
	    	版权所有
	    </div>
    </div>
  </body>
</html>
