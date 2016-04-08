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
	<meta http-equiv="description" content="图书管理">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  	<table border="1" align="center" cellspacing="0" cellpadding="5" >
  			<tr>
  				<th>类型id</th>
  				<th>类型名称</th>
  				<th colspan="2">操作</th>
  			</tr>
  			<s:iterator value="books" id="column">
	  			<tr>
	  				<td><s:property value="bid"/></td>
	  				<td><s:property value="isbn"/></td>
	  				<td><a href="javascript:void(0);" class="update" onclick="javascript:$('.update-dialog').css('display','block');">修改</a></td>
	  				<td><a href="javascript:void(0);" class="delete" onclick="del($(this))">删除</a></td>
	  			</tr>
  			</s:iterator>
  			<tr>
  				<td colspan="4"><a href="javascript:void(0);" class="add" onclick="javascript:$('.add-dialog').css('display','block');" >添加</a></td>
  			</tr>
  		</table>
  </body>
</html>
