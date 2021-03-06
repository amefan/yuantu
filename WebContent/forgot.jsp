<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>忘记密码</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<script>
	function checkForm(){
		
		var name=document.getElementById("name");
		
		var pValue=document.getElementById("email");
		
		if(name.value.length==0){
			alert("请输入用户名！");
			return false;
		}else if(pValue.value.length==0){
			alert("请输入邮箱！");
			return false;
		}
		return true;
	}
	

	
	</script>

	</head>
	<body>
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="${pageContext.request.contextPath }/ForgotAction"  onsubmit="return checkForm()" method="post"  class="fh5co-form animate-box" data-animate-effect="fadeIn">
						<h2>忘记密码</h2>
						<div class="form-group">
							<div class="alert alert-success" role="alert">请留下您的邮箱</div>
						</div>
						<div class="form-group">
							<label for="email" class="sr-only">Email</label>
							<input type="email" class="form-control" id="email" name="f_email" placeholder="邮箱" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="email" class="sr-only">用户名</label>
							<input type="name" class="form-control" id="name" name="f_name" placeholder="用户名" autocomplete="off">
						</div>
						<div class="form-group">
							<p><a href="index.html">登陆</a> or <a href="sign-up.html">注册</a></p>
						</div>
						<div class="form-group">
							<input type="submit" value="发送" class="btn btn-primary">
						</div>
					</form>
					<!-- END Sign In Form -->


				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; Copyright Neworiental Corporation, All Rights Reserved
                   </small></p>
                <div class="col-md-12 text-center"><p><small>&copy;  圆图教育 版权所有
                   </small></p>
				</div>
			</div>
		</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	</body>
</html>

