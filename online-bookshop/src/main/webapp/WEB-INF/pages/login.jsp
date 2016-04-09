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
		<meta http-equiv="description" content="This is my page">
		
		<link rel="stylesheet" type="text/css" href="css/login.css"/>
		<script type="text/javascript" src="js/jquery.1.12.js"></script>
		<script type="text/javascript">
		function result(){
			var errorMessage = "${errorMessage}";
			if(errorMessage){
				$(".error-info").text(errorMessage).css("display","block");
			}
			else{
				$(".error-info").css("display","none");
			}
		}
		
		$(function(){
			result();
			$(".username").blur(function(){
				if($(this).text().trim() == ""){
					$(".error-info").text("用户名不能为空！").css("display","block");
				}
			});
			$(".password").blur(function(){
				if($(this).text().trim() == ""){
					$(".error-info").text("密码不能为空！").css("display","block");
				}
			});
		});	
		</script>
	</head>
	<body>
		<div class="header">
			<div class="content">
				<a href="#"><img alt="" src="images/bookstore-logo.png"></a>
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
		    			<div class="login-username">
		    				<span>用户名</span><input type="text" name="username" class="username"/>
		    			</div>
		    			<div class="login-password">
		    				<span>密码</span><input type="password" name="password" class="password"/>
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
			</div>
		</div>
	  	<jsp:include page="commons/footer.jsp" flush="true">
		  <jsp:param name="pageTitle" value="newInstance.com"/>
		</jsp:include>
	</body>
</html>