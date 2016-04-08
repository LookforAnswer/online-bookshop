<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="公告管理">
	<script type="text/javascript" src="js/common.js"></script>
	<link rel="stylesheet" type="text/css" href="admin/bgCss/noticemanager.css">
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
		function detail(obj){
			
		}
	</script>
  </head>
  
  <body>
    <div class="typelist">
  		<table border="1" align="center" cellspacing="0" cellpadding="5" >
  			<tr>
  				<th>公告id</th>
  				<th>公告标题</th>
  				<th>公告简介</th>
  				<th colspan="3">操作</th>
  			</tr>
  			<s:iterator value="notices" id="column">
	  			<tr>
	  				<td><s:property value="noticeid"/></td>
	  				<td><s:property value="notice_title"/></td>
	  				<td><s:property value="notice_simple_des"/></td>
	  				<td><a href="javascript:void(0);" class="detail" onclick="detail($(this))">详情</a><span class="" style="display:none;"><s:property value="notice_detail_des"/></span></td>
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
    	<div class="dialog-title">新增公告</div>
    	<form action="Kind_add.action" method="post" >
    		<div  class="form-content">
    			<span>类型名称</span><input type="text" name="typename" style="outline:none;"/>
    		</div>
    		<div class="form-buttons">
    			<input type="submit" value="提交"/>
    			<div class="cancel" onclick="javascript:$('.add-dialog').css('display','none');">取消</div>
    		</div>
    	</form>
    </div>
    
    <div class="update-dialog">
    	<div class="dialog-title">修改公告</div>
    	<form action="Kind_update.action" method="post">
    		<div  class="form-content">
    			<span style="margin-right:5px;">类型id</span><input type="text" name="typeid" style="outline:none;"/>
    		</div>
    		<div  class="form-content">
    			<span style="margin-right:5px;">类型名称</span><input type="text" name="typename" style="outline:none;"/>
    		</div>
    		<div class="form-buttons">
    			<input type="submit" value="提交"/>
    			<div class="cancel" onclick="javascript:$('.update-dialog').css('display','none');">取消</div>
    		</div>
    	</form>
    </div>
    <div class="detail-dialog">
    	<div class="dialog-title">公告详情</div>
    	<div class="content">
    		
    	</div>
    </div>
  </body>
</html>
