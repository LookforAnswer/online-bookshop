<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta content="footer">
    <link rel="stylesheet" type="text/css" href="css/footer.css"/> 
  </head>
  
  <body>
	<div class="footer-name">
		<img alt="" src="images/footer-name.gif" />
	</div>
	<div class="footer-ul">
		<ul>
			<li><a href="List.action">主页</a></li>
			<li><a href="aboutMe.action">关于我们</a></li>
			<li><a href="javascript:void(0);">服务</a></li>
			<li><a href="aboutMe.action">联系我们</a></li>
		</ul>
	</div>
	<div class="footer-bg">
		<img alt="" src="images/footer-bg.gif" />
	</div>
  </body>
</html>
