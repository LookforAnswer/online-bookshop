<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<html>  
  <head>  
    <base href="<%=basePath%>">  
    <script type="text/javascript" src="js/jquery.1.12.js"></script>  
    <script type="text/javascript" src="js/jquery.form.js"></script>   
    <title>My JSP 'index.jsp' starting page</title>  
    <script type="text/javascript">  
            //ajax 方式上传文件操作  
             $(document).ready(function(){  
                $('#btn').click(function(){  
                    if(checkData()){  
                        $('#form1').ajaxSubmit({    
                            url:'excel/ajaxUpload',  
                            dataType: 'text',  
                            success: resutlMsg,  
                            error: errorMsg  
                        });   
                        function resutlMsg(msg){  
                            alert(msg);     
                            $("#upfile").val("");  
                        }  
                        function errorMsg(){   
                            alert("导入excel出错！");      
                        }  
                    }  
                });  
             });  
               
             //JS校验form表单信息  
             function checkData(){  
                var fileDir = $("#upfile").val();  
                var suffix = fileDir.substr(fileDir.lastIndexOf("."));  
                if("" == fileDir){  
                    alert("选择需要导入的Excel文件！");  
                    return false;  
                }  
                if(".xls" != suffix && ".xlsx" != suffix ){  
                    alert("选择Excel格式的文件导入！");  
                    return false;  
                }  
                return true;  
             }  
    </script>   
  </head>  
    
  <body>  
  <div>1.通过简单的form表单提交方式，进行文件的上</br> 2.通过jquery.form.js插件提供的form表单一步提交功能 </div></br>  
    <form method="POST"  enctype="multipart/form-data" id="form1" action="file/uploadImg">  
		<div>
			<img alt="图片" id="pic" src="<%=basePath%>/file/getImg?id=24eb809580b34513aa02d5161ca9222e">
		</div>
	    <span>上传图片: </span>  
        <input id="upfile" type="file" name="upImg" onchange="preview()">  
        
        <div>
        	<input type="submit" value="提交">
        </div>
        <!-- <td><input type="button" value="ajax方式提交" id="btn" name="btn" ></td> -->  
    </form>  
      
  </body>  
  <script type="text/javascript">
  	/* $(function(){ */
  		url = "<%=basePath%>/file/getImg?id=24eb809580b34513aa02d5161ca9222e";
  		var xhr = new XMLHttpRequest();    
  	    xhr.open("get", url, true);
  	    xhr.responseType = "blob";
  	    xhr.onload = function() {
  	        if (this.status == 200) {
  	            var blob = this.response;
  	            var img = document.getElementById("pic");
  	            img.onload = function(e) {
  	              window.URL.revokeObjectURL(img.src); 
  	            };
  	            img.src = window.URL.createObjectURL(blob);
  	 		} 
  	    } ;
  	 	xhr.send();
  	 	
  	 	//http://www.debugease.com/javaweb/193847.html,显示多张图片
  	//});
  </script>
</html>  