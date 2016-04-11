<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
  <head>
	<meta  content="heaer" />
	<!-- <link rel="Shortcut Icon" href="images/bookstore-logo-small.png"> -->   
	<link rel="stylesheet" type="text/css" href="css/header.css"/>
  </head>
  <body>
  	<div class="header">
  		<jsp:include page="common-header.jsp" flush="true" /> 
	</div>
  	<div class="search-container">
  		<div class="left"><img alt="" src="images/bookstore-logo.png"></div>
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
  			<div class="shopping-car">购物车</div>
  		</div>
  	</div>
  	<div class="list-types">
  		<div class="list-types-content">
  			<div class="list-types-all">全部商品分类</div>
  			<div class="list-types-cell">
  				<a href="#">首页</a>
  				<a href="#">分类一</a>
  				<a href="#">分类二</a>
  				<a href="#">分类三</a>
  				<a href="#">分类四</a>
  				<a href="#">分类五</a>
  			</div>
  		</div>
  	</div>
  </body>
</html>
