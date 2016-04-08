<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
	<meta  content="heaer" />
	<link rel="Shortcut Icon" href="images/bookstore-logo.png">   
	<link rel="stylesheet" type="text/css" href="css/header.css"/> 
  </head>
  <body>
    <div class="header-bg">
	  		<img src="images/header-bg.jpg" alt="" />
	  	</div>
	  	<div class="bookstore">
	  		<a href="List.action"><img alt="" src="images/header-name.gif" /></a>
	  	</div>
	  	<div class="nav">
		  	<ul>
		  		<li><a href="List.action">主页</a></li>
		  		<li><a href="javascript:void(0);">特价图书</a></li>
		  		<li><a href="javascript:void(0);">新品图书</a></li>
		  		<li><a href="javascript:void(0);">精品图书</a></li>
		  		<li><a href="contact.action">联系方式</a></li>
		  		<li><a href="aboutMe.action">关于我们</a></li>
		  	</ul>
	  	</div>
	  	
	  	<script type="text/javascript">
		
		</script>
	  	<div  class="user-info">
	  		<s:if test="%{#request.username==null}">
	  			<div class="no-login" id="no-login">
			  		<a href="login.jsp" class="exit">登录</a>
			  	</div>
	  		</s:if>
		  	<s:else>
		  		<div class="have-login" id="have-login">
			  		<span class="username"><s:property value="#request.username"/></span>
			   		<a href="login.jsp" class="exit">退出</a>
			   		<a href="viewCart.jsp" class="shopping-car">我的购物车</a>
			  	</div>
		  	</s:else>
	  	</div>
  </body>
</html>
