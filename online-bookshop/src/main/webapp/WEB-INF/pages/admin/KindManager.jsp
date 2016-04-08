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
	
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/common.js"></script>
	<link rel="stylesheet" type="text/css" href="admin/bgCss/typemanager.css">
	<script type="text/javascript">
		window.onload = function(){
			var name = "${attr.result}";
			if("addsuccess"==name){
				alert("添加成功！");
			}
			else if("addexist"==name){
				alert("您添加的记录已存在！");
			}
			else if("adderror"==name){
				alert("添加失败！");
			}
			else if("updatesuccess"==name){
				alert("更新成功！");
			}
			else if("updatenoexist"==name){
				alert("您修改的记录不存在！");
			}
			else if("updateerror"==name){
				alert("更新失败！");
			}
			else if("delsuccess"==name){
				alert("删除成功！");
			}
			else if("delnoexist"==name){
				alert("您删除的记录不存在！");
			}
			else if("delerror"==name){
				alert("删除失败！");
			}
		}
	</script>
  </head>
  
  <body>
	  <div class="typelist">
	  	<table border="1" align="center" cellspacing="0" cellpadding="5" >
	  			<tr>
	  				<th>类型id</th>
	  				<th>类型名称</th>
	  				<th colspan="2">操作</th>
	  			</tr>
	  			<s:iterator value="kinds" id="column">
		  			<tr>
		  				<td><s:property value="booktypeid"/></td>
		  				<td><s:property value="typename"/></td>
		  				<td><a href="javascript:void(0);" class="update" onclick="javascript:$('.update-dialog').css('display','block');">修改</a></td>
		  				<td><a href="javascript:void(0);" class="delete" onclick="del($(this))">删除</a></td>
		  			</tr>
	  			</s:iterator>
	  			<tr>
	  				<td colspan="4"><a href="javascript:void(0);" class="add" onclick="javascript:$('.add-dialog').css('display','block');" >添加</a></td>
	  			</tr>
	  	</table>
	  </div>
	  <div class="add-dialog">
    	<div class="dialog-title">新增类型</div>
    	<form action="Kind_add.action" method="post" >
    		<div  class="form-content">
    			<span>类型名称</span><input type="text" name="kindname" style="outline:none;"/>
    		</div>
    		<div class="form-buttons">
    			<input type="submit" value="提交"/>
    			<div class="cancel" onclick="javascript:$('.add-dialog').css('display','none');">取消</div>
    		</div>
    	</form>
    </div>
    
    <div class="update-dialog">
    	<div class="dialog-title">修改类型</div>
    	<form action="Kind_update.action" method="post">
    		<div  class="form-content">
    			<span style="margin-right:5px;">类型id</span><input type="text" name="kindid" style="outline:none;"/>
    		</div>
    		<div  class="form-content">
    			<span style="margin-right:5px;">类型名称</span><input type="text" name="kindname" style="outline:none;"/>
    		</div>
    		<div class="form-buttons">
    			<input type="submit" value="提交"/>
    			<div class="cancel" onclick="javascript:$('.update-dialog').css('display','none');">取消</div>
    		</div>
    	</form>
    </div>
  	
  </body>
</html>
