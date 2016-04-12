<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <body>
  	<div class="header">
  		<jsp:include page="common-header.jsp" flush="true" /> 
	</div>
  	<div class="search-container">
  		<div class="left">
  			<a href=""><img alt="" src="images/bookstore-logo.png"></a>
  		</div>
  		<div class="middle">
  			<div >
  				<input type="text" />
  				<span class="search-btn">搜索</span>
  			</div>
  			<div class="hot-search">
  				<span class="search-title">热搜：</span>
  				<a href="#">闪购</a>
  				<a href="#">特交图书</a>
  				<a href="#">c语言程序设计</a>
  			</div>
  		</div>
  		<div class="right">
  			<div class="shopping-car">
	  			<i class="glyphicon glyphicon-shopping-cart" style="font-size:14px;"></i>
	  			<a href="book/booksCart">购物车</a>
	  			<span>0</span>
  			</div>
  		</div>
  	</div>
  	<div class="list-types">
  		<div class="list-types-content">
  			<div class="list-types-all">全部商品分类</div>
  			<div class="list-types-cell">
  				<a href="">首页</a>
  				<a href="#">分类一</a>
  				<a href="#">分类二</a>
  				<a href="#">分类三</a>
  				<a href="#">分类四</a>
  				<a href="#">分类五</a>
  			</div>
  		</div>
  	</div>
  	<script type="text/javascript">
		$(".shopping-car").hover(function(){
			$(this).css("background-color","#0d3c6d");
			$(this).find("i,a,span").css("color","#fff");
		},
		function(){
			$(this).css("background-color","#fff");
			$(this).find("i,a,span").css("color","#0d3c6d");
		});
		
		//搜索按钮的点击事件
		$(".search-btn").click(function(){
			// TODO:添加搜索代码
		});
		
		//给所有的a标签添加绝对路径
		/* $("a").each(function(){
			if($(this).attr("href")=="undefined"){
				var url = basePath;
			}
			else{
				url = basePath + $(this).attr("href");
			}
			$(this).attr("href",url);
		}); */
  	</script>
  </body>
</html>
