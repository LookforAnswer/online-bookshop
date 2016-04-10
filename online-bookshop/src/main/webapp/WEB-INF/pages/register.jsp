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
		<title>注册</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		
		<link rel="stylesheet" type="text/css" href="css/register.css"/>
		<script type="text/javascript" src="js/jquery.1.12.js"></script>
		<script type="text/javascript">
		/* function result(){
			var name = "${attr.message}";
			if(name=="failed"){
				alert("您输入的用户名或密码不正确！");
			}
		} */
		$(function(){
			
			//切换注册方式的点击事件
			$(".main-header div").click(function(){
				$(".main-header div").removeClass();
				$(this).addClass("selected");
				if($(this).text() == "邮箱账号注册"){//邮箱注册
					$(".email").css("display","block");
					$(".cellphone").css("display","none");
				}
				else{//手机号码注册
					$(".cellphone").css('display',"block");
					$(".email").css("display","none");
				}
			});
			
			//验证邮箱是否被注册
			$("#email").blur(function(){
				validateEmailOrCellphone($(this),$(this).val());
			});
			
			//验证手机号码是否被注册
			$("#cellphone").blur(function(){
				validateEmailOrCellphone($(this),$(this).val());
			});
		});
		
		
		
		/*
			obj:代表是手机号码还是邮箱input对象
			str：代表他们对应的input中的值
		*/
		function validateEmailOrCellphone(obj,value){
			var url,data;
			if(obj.attr('id') == "email"){
				url = "<%=basePath %>isExistEmail";
				data = {email:value};
			}
			else if(obj.attr('id') == "cellphone"){
				url = "<%=basePath %>isCellphone";
				data = {cellphone:value};
			}
			$.ajax({
				url:url,
				data:data,
				type:'post',
				cache:false,
				dataType:'json',
				success:function(data){
					if(data == '1'){
						$(".email-err").text("*该邮箱已被注册！");
					}
					else{
						$(".email-err").text("");
					}
				},
				error:function(){
					console.log("err!!!");
				}
			});
		}
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
				<div class="main-header">
					<div class="selected">邮箱账号注册</div>
					<div class="">手机号码注册</div>
				</div>
				<form action="addUser" method="POST">
					<div class="email">
						<div class="field"><span class="title">邮箱：</span><input  type="text" class="text" id="email" name="email"/><span class="email-err"></span></div>
					</div>
					<div class="cellphone">
						<div class="field"><span class="title username">手机号码：</span><input  type="text" class="text" id="cellphone" name="cellphone"/></div>
					</div>
					<div class="field"><span class="title">登陆密码：</span><input type="password" class="text" /></div>
					<div class="field"><span class="title">确认密码：</span><input type="password" class="text" name="password"/></div>
					<div class="cellphone">
						<div class="validate"><span class="title">验证码：</span><input type="text" class="validate-text" /><img alt="验证码" src="" /></div>
						<div class="ensure"><input type="submit" class="ensure-btn" value="发送手机确认码"/></div>
						<div class="field"><span class="title">确认码：</span><input type="text" class="text" /></div>
					</div>
					<div class="btn-container"><input type="submit" class="btn" value="注册"/></div>
				</form>
				<div class="main-footer">
					<span>有好学账号？请</span>
					<a href="login">登录</a>
				</div>
			</div>
		</div>
		<div class="footer">
			<%@ include file="commons/loginfooter.jsp" %>
		</div>
	</body>
</html>