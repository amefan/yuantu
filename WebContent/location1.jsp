<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>小学初高中培训地址</title>

		<!-- 引入Bootstrap核心样式文件 -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		
	</head>

	<body>
		
	<nav class="navbar navbar-default ">
		  <div class="container-fluid  col-md-offset-1 col-md-10" >	
		    <!-- Brand and toggle get grouped for better mobile display -->
		      
		      <div class="navbar-header">
		      <a class="navbar-brand" href="#">
		        <img alt="Brand" src="images/logo2.png">
		      </a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		       
		         <li><a href="index.jsp">首页</a></li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">小学教育<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		           <li><a href="location1.jsp">语文</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">数学</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">英语</a></li>
		          </ul>
		        </li>
		        
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">初中教育<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="location1.jsp">语文</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">数学</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">英语</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">高中教育<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="location1.jsp">语文</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">数学</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">英语</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">物理</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">化学</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">生物</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">政治</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location1.jsp">地理</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">小语种教育<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="location2.jsp">德语</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location2.jsp">西班牙语</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location2.jsp">葡萄牙语</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location2.jsp">日语</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="location2.jsp">韩语</a></li>
		          </ul>
		        </li>
		        <li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">考研培训<span class="caret"></span></a>
		          <ul class="dropdown-menu">
		             <li><a href="location.html">地点一:长沙市雨花区人民中路36号</a></li>
		             <li role="separator" class="divider"></li>
		             <li><a href="location.html">地点二:长沙市岳麓区阜埠河路221号</a></li>
		             <li role="separator" class="divider"></li>
		             <li><a href="location.html">地点三:长沙市岳麓区麓山南路2号</a></li>
		          </ul>
		        </li>
		      </ul>
		    
		      
		    </div><!-- /.navbar-collapse -->
		</div>
		
 </nav>
       
       <div class="container-fluid">
       	  <div class="col-md-6 ">
       	  	<img src="images/a4.png" />
	      </div>
       	  	
       	  	
  
    <!--end轮播-->
       	<div class="col-md-3 col-md-offset-2">
       		<ul class="list-group">
				  <li class="list-group-item">地点:长沙市岳麓区御景路20号附近</li>
				  <li class="list-group-item"><i class="glyphicon glyphicon-hand-right"><a  href="ApplyAction_execute?u_id=<s:property value='#session.user.u_id'/>">点击报名</a></i></li>
		    </ul>
       		
       	</div>
       	
       </div>
    
 <!--底部-->
        <div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; Copyright Neworiental Corporation, All Rights Reserved
                   </small></p>
                <div class="col-md-12 text-center"><p><small>&copy;  圆图教育 版权所有
                   </small></p>
				</div>
			</div>
		<!-- 引入jQuery核心js文件 -->
		<script src="js/jquery-1.11.3.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="js/bootstrap.js"></script>
	</body>

</html>