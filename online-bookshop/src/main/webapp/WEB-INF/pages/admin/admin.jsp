<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理界面</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="admin/bgCss/admin.css"/>
	<script type="text/javascript" src="js/jquery.js"></script>
	
	<script type="text/javascript">
		function GetDate(){
			var date = new Date();
			var weekday="";
			var dateString = date.getFullYear()+"年"+(date.getMonth()+1)+"月"+date.getDate()+"日";
			switch(date.getDay()){
				case 0:weekday="星期日";
						break;
				case 1:weekday="星期一";
						break;
				case 2:weekday="星期二";
						break;
				case 3:weekday="星期三";
						break;
				case 4:weekday="星期四";
						break;
				case 5:weekday="星期五";
						break;
				case 6:weekday="星期六";
						break;
			}
			document.getElementById("date-detail").innerHTML = dateString;
			document.getElementById("weekday").innerHTML = weekday;
		}
		window.onload = function(){
			GetDate();
			
			//给绑定效果
			$(".left ul li").click(function(){
				document.getElementById("right-title").innerHTML = $(this).find("a").html();
				var index = $(this).index();
				$(".tabpage").eq(index).css("display","block");
				$.each($(".tabpage"), function(i) {     
				    if(i!=index){
				    	$(".tabpage").eq(i).css("display","none");
				    }          
				});  
				
			});
			
			var username = "<%=session.getAttribute("username")%>";
			if(username=="null"){
				alert("您的登陆信息已过期，请重新登陆！");
				window.location.href="http://localhost:8080/OnlineBookstore/login.jsp";
			}
			
		};
	</script>
  </head>
  
  <body>
    <div class="header">
    	<div class="header-title">
    		<img src="images/bookstore-logo.png" class="title-big"  /><div class="title-small">后台管理</div>
    	</div>
    	<div class="header-info">
    		<div class="user-admin">
		    	当前登录:&nbsp;<span class=""><s:property value="#request.username"/></span>
	    		<a href="login.jsp" class="exit">退出</a>
	    	</div>
	    	<div class="date">
	    		今天是&nbsp;<span class="date-detail" id="date-detail"></span>
	    		&nbsp;<span id="weekday"></span>
	    	</div>
    	</div>
    </div>
    
    <div class="body">
    	<div class="left">
    		<ul>
    			<li><a href="BookManager.action" target="content">图书管理</a></li>
    			<li><a href="NoticeManager.action" target="content">公告管理</a></li>
    			<li><a href="OrderManager.action" target="content">订单管理</a></li>
    			<li><a href="KindManager.action" target="content">类型管理</a></li>
			</ul>
    	</div>
    	<div class="right">
    		<div class="right-title" id="right-title" style="display:block;">图书管理</div>
    		<div style="height:475px;" class="right-content">
    			<!-- <iframe name="content"   frameborder="0" style="width:598px;height:475px;"></iframe> -->
    			<iframe name="content" frameborder="0" style="width:598px;height:475px;"></iframe>
    		</div>
    	</div>
    </div>
    
    <div class="footer">
    	<div class="footer-one">All&nbsp;Copyright&nbsp;&copy;&nbsp;reserved 2015</div>
    	<div class="footer-two">客服热线：0111-11111111</div>
    </div>
  </body>
</html>
