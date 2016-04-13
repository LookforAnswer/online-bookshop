<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎来到网上书店</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="首页">
	<link rel="Shortcut Icon" href="images/bookstore-logo-small.png">
	<link href="css/index.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
  	<div class="header">
  		<jsp:include page="commons/header.jsp" flush="true" /> 
	</div>
   	<div class="index">
   		<div >
   			<div>
   				<ul>
   					<li>
   						
   					</li>
   				</ul>
   			</div>
   			<div></div>
   		</div>
   		<div >
   			
   		</div>
   	</div>
   	<div class="footer">
		<jsp:include page="commons/footer.jsp" flush="true" /> 
	</div>
	<script type="text/javascript">
	</script>
  </body>
</html>
