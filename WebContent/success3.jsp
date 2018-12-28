<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
		<title>操作成功</title>

		<!-- 引入Bootstrap核心样式文件 -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		
	</head>

	<body>
		
	    <div style="text-align: center;">
	    	
	    	<h3>发送成功,自动返回首页...</h3>
	    	
	    </div>
		<!-- 引入jQuery核心js文件 -->
		<script src="js/jquery-1.11.3.min.js"></script>
		<!-- 引入BootStrap核心js文件 -->
		<script src="js/bootstrap.js"></script>
	</body>
    <script type="text/javascript"> 
      //3秒钟之后跳转到指定的页面 
     setTimeout("window.location.href='index.jsp'",1000); 
   </script>
</html>
