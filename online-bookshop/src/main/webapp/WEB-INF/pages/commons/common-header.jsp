<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
	<meta  content="heaer" />
	<!-- <link rel="Shortcut Icon" href="images/bookstore-logo-small.png"> -->   
	<link rel="stylesheet" type="text/css" href="css/header.css"/>
	<link rel="stylesheet" type="text/css" href="font-framework/bootstrap-3.3.5-dist/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="font-framework/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
	<script type="text/javascript" src="js/jquery.1.12.js"></script> 
	<script type="text/javascript">
		$(function(){
			var username = "${username}";
			if(username != "" || username =="[]"){//如果username不为空
				$(".after-login").html("<a href='userManage'>"+ username +"</a>");
				$(".after-register").html("<a href='loginout'>退出</a>");
			}
			else{
				$(".after-login").html("<span>欢迎光临好学网，请</span>[<a href='login'>登录</a>]");
				$(".after-register").html("[<a href='register'>免费注册</a>]");
			}
		});
	</script>
  </head>
  <body>
  	<div class="user-info-container">
  		<div class="user-info">
  			<div class="before">
  				<!-- <span><img alt="star" src="images/header/star.png"></span> --><i class="glyphicon glyphicon-star" style="color:orange;"></i><span class="store-up">收藏好学</span>
  			</div>
  			<div class="after">
  				<span class="after-login">
	  				<span>欢迎光临好学网，请</span>
	  				[<a href="login">登录</a>]
  				</span>
				<span class="after-register">
					[<a href="register">免费注册</a>]
				</span>  				
  				<span class="cutline">|</span>
  				<a href="#">我的订单</a>
  				<span class="cutline">|</span>
  				<a href="#">我的好学</a>
  				<span class="cutline">|</span>
  				<a href="#">帮助中心</a>
  				<span class="cutline">|</span>
  				<a href="#">客户服务</a>
  			</div>
  		</div>
  	</div>
  </body>
</html>
