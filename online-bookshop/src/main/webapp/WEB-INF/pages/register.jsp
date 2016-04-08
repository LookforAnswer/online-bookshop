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
    <title>注册首页</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/register.css"/>
	<script type="text/javascript">
	function result(){
		var name = "${attr.result}";
		if(name=="exist"){
			alert("您注册的用户名已存在！");
		}
		else if(name=="admin"){
			alert("您不能注册管理员的用户名！");
		}
		else if(name=="success"){
			alert("注册成功！");
		}
	}
	window.onload = function(){
		result();
	};	
	</script>
  </head>
  
  <body>
    <div class="header">
    	<div class="header-logo">
    		<img alt="" src="images/bookstore-logo.png"/>
    	</div>
    </div>
    <div class="body">
	    <div class="body-bg">
	    	<img alt="" src="images/login-bg.png"/>
	    </div>
    	<div class="body-register-container">
    		<div class="register-title">
    			用户注册
    		</div>
    		<form action="Register.action" method="Post">
    			<div class="register-username">
    				<span>用户名</span><input type="text" name="username"/>
    			</div>
    			<div class="register-password">
    				<span>密码</span><input type="password" name="password"/>
    			</div>
    			<div class="register-sub">
    				<input class="register-submit" type="submit" value="注册" />
    			</div>
    		</form>
    		<a href="login" class="login">登录</a>
    	</div>
    </div>
    
    <div class="footer">
    	版权所有
    </div>
  </body>
</html>
