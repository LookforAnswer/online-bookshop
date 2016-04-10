%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>关于我们</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		body{
			margin:0px;
			padding:0px;
			background:#3e485d;
		}
		.header,
		.body,
		.footer{
			width:960px;
			margin:0px auto;
		}
		.header{
			height:193px;
			/*background:#0d3c6d;*/
			position:relative;
		}
		
		.body{
			height:500px;
			background:#fff;
		}
		
		.footer{
			height:100px;
			background:#fff;
			position: relative;
			border-top:dashed 1px #666;	
		}
	</style>
  
  </head>
  
  <body>
    <div class="header">
    	<jsp:include page="commons/header.jsp" flush="true">
		  <jsp:param name="pageTitle" value="newInstance.com"/>
		  <jsp:param name="pageSlogan" value=" " />
		</jsp:include>
    </div>
    <div class="body" style="text-align:center;">
    	<h1 style="margin:0px;padding:0px;">关于我们</h1>
    </div>
    <div class="footer">
    	<jsp:include page="commons/footer.jsp" flush="true">
		  <jsp:param name="pageTitle" value="newInstance.com"/>
		</jsp:include>
    </div>
  </body>
</html>
