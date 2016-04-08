<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <div class="header">
  		登录成功！ 
   		<a href="login.jsp">退出</a>
  	</div>
   	<div class="body">
   		<table>
   			<tr>
   				<th>书名</th>
   				<th>isbn号</th>
   				<th>价格</th>
   				<th>作者</th>
   			<tr/>
   			<s:iterator value="list">
   				<tr>
   					<td>
   						<a href="viewDetail.action?bid=<s:property value="bid"/>" title="" >
   							<s:property value="title"/>
   						</a>
   					</td>
   					<td>
   						<s:property value="isbn" />		
   					</td>
   					<td>
   						<s:property value="price" />		
   					</td>
   					<td>
   						<s:property value="author" />		
   					</td>
   				</tr>
   			</s:iterator>
   		</table>
   	</div>
   	<div class="footer">
   		
   	</div>
  </body>
</html>
