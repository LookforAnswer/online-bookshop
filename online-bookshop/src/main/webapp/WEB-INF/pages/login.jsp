<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<link rel="Shortcut Icon" href="images/bookstore-logo-small.png">
		<title>登录</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="登录页面">
		
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
		<link rel="stylesheet" type="text/css" href="font-framework/bootstrap-3.3.5-dist/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="font-framework/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
		
	</head>
	<body>
		<div class="header">
			<div class="content">
				<a href=""><img alt="" src="images/bookstore-logo.png"></a>
			</div>
		</div>
		<div class="main">
			<div class="content">
				<div class="content-bg">
		    		<img alt="" src="images/login-bg.png"/>
			    </div>
		    	<div class="content-login-container">
		    		<div class="login-title">
		    			用户登录
		    		</div>
		    		<div class="error-info">*用户名和密码不匹配</div>
		    		<form action="list" method="Post">
		    			<div class="input-group">
						  <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-user"></i></span>
						  <input type="text" name="username" class="form-control username" placeholder="Username" aria-describedby="basic-addon1">
						</div>
						<div class="input-group">
						  <span class="input-group-addon" id="basic-addon1"><i class="glyphicon glyphicon-lock"></i></span>
						  <input type="password" name="password" class="form-control password" placeholder="Password" aria-describedby="basic-addon1">
						</div>
						<div class="checkbox">
						    <label>
						      <input type="checkbox">记住密码
						    </label>
						</div>
		    			<div class="login-sub">
		    				<input class="btn btn-default login-sub-btn" type="submit" value="登录">
		    			</div>
		    		</form>
		    		<a href="register" class="register">用户注册</a>
		    	</div>
			</div>
		</div>
		<%@ include file="commons/loginfooter.jsp" %>
	  	<script type="text/javascript" src="js/jquery.1.12.js"></script>
		<script type="text/javascript">
		function result(){
			var errorMessage = "${errorMessage}";
			if(errorMessage){
				$(".error-info").text(errorMessage).css("visibility","visible");
			}
			else{
				$(".error-info").css("visibility","hidden");
			}
		}
		
		$(function(){
			result();
			$(".username").blur(function(){
				if($(this).val().trim() == ""){
					$(".error-info").text("*用户名不能为空！").css("visibility","visible");
				}
				else{
					$(".error-info").text("*用户名不能为空！").css("visibility","hidden");
				}
			});
			$(".password").blur(function(){
				if($(this).val().trim() == ""){
					$(".error-info").text("*密码不能为空！").css("visibility","visible");
				}
				else{
					$(".error-info").text("*密码不能为空！").css("visibility","hidden");
				}
			});
		});	
		</script>
	</body>
</html>