<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
	<link rel="stylesheet" type="text/css" href="css/header.css"/>
	<link rel="stylesheet" type="text/css" href="font-framework/bootstrap-3.3.5-dist/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="font-framework/bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
	<script type="text/javascript">
		//在每个jsp显示的页面，需要添加  <base>标签 ，在其他的公共模块的jsp需要添加如下代码
		var basePath = document.getElementsByTagName("base")[0].href;
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
  				<a href="" class="my-haoxue">我的好学</a>
  				<span class="cutline">|</span>
  				<a href="#">帮助中心</a>
  				<span class="cutline">|</span>
  				<a href="#">客户服务</a>
  			</div>
  		</div>
  	</div>
  	<script type="text/javascript" src="js/jquery.1.12.js"></script> 
	<script type="text/javascript">
		var username = "${username}";
		if(username != "" || username =="[]"){//如果username不为空
			$(".after-login").html("<a href='userManage'>"+ username +"</a>");
			$(".after-register").html("<a href='loginout'>退出</a>");
			$(".my-haoxue").attr("href","userManage");
		}
		else{
			$(".after-login").html("<span>欢迎光临好学网，请</span>[<a href='login'>登录</a>]");
			$(".after-register").html("[<a href='register'>免费注册</a>]");
			$(".my-haoxue").attr("href","login");
		}
	</script>
  </body>
</html>
