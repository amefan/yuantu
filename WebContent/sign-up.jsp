<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>注册</title>
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
	<!-- 引入jQuery核心js文件 -->
    <script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	
	<script src="js/respond.min.js"></script>
	<![endif]-->
    
     <script>
    	function changeVerifyCode(){
    		var i=1;
    		document.getElementById("verifyCode").src="<%=request.getContextPath()%>/ValidateAction?rand="+Math.random();
    	}
    	
    	function checkForm(){
		
				var name=document.getElementById("name");
				var eValue=document.getElementById("phone");
				var pValue=document.getElementById("password");
				var rpValue=document.getElementById("re-password");
				if(name.value.length==0){
					alert("请输入昵称！");
					return false;
				}else if(pValue.value.length<6){
					alert("密码长度小于6！");
					return false;
				}else if(pValue.value!=rpValue.value||rpValue.value.length==0){
					alert("两次密码不一致!");
					return false;
				}else if(!(/^1[3|4|5|8|7][0-9]\d{8}$/.test(eValue.value))){
					alert("请输入正确手机号！");
					return false;
				}
				return true;
			}
    		
    	$(function(){
    		 $("#name").blur(function(){
    			 var url="${pageContext.request.contextPath}/UserAction_isExitName"
    			 var word=$(this).val();
    			 $.get(url,{name:word},
    					  function(data){
    				         if(data.status==1){
    				        	$("#span1").text("用户名已存在！"); 
    				         }else if(data.status==0){
    				        	$("#span1").empty(); 
    				         }  				 
    					  },"json");
    			 })
    		 })
    	
    </script>
	</head>
	<body >

		
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="${pageContext.request.contextPath }/UserAction_regist" class="fh5co-form animate-box" data-animate-effect="fadeIn" onsubmit="return checkForm()" method="post">
						
						
						<h2>注册</h2>
						
						<span class="text-danger" id="span1"><s:property value="#error"/></span>
						
						<div class="form-group">
							<label for="name" class="sr-only">Name</label>
							<input type="text" class="form-control" id="name" name="u_name" placeholder="用户名" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="email" class="sr-only">请输入手机号码</label>
							<input type="text" class="form-control" id="phone" name="u_phone" placeholder="手机号" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">请输入密码</label>
							<input type="password" class="form-control" id="password" name="u_password" placeholder="密码" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="re-password" class="sr-only">确认密码</label>
							<input type="password" class="form-control" id="re-password" placeholder="确认密码" autocomplete="off">
						</div>
						
						<div class="form-group">
								<label for="verify" class="sr-only">验证码</label>
								<input type="text" class="form-control" style="width: 120px;" name="code" id="code" placeholder="验证码"  autocomplete="off" >
									&nbsp;
								<img src="<%=request.getContextPath()%>/ValidateAction" id="verifyCode" title="单击换一换" onclick="changeVerifyCode()" style="height: 40px; width: 120px;margin-left: 140px; margin-top: -60px;"/>
                                <a href="javascript:changeVerifyCode();">看不清？</a>
						 </div>
						<div class="form-group">
							<p>已有账号? <a href="sign-in.jsp">去登陆</a></p>
						</div>
						<div class="form-group">
							<input type="submit" value="注册" class="btn btn-primary">
						</div>
					</form>
					<!-- END Sign In Form -->

				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<div class="col-md-12 text-center"><p><small>&copy; Copyright Neworiental Corporation, All Rights Reserved
                   </small></p>
                <div class="col-md-12 text-center"><p><small>&copy; 圆图教育 版权所有
                   </small></p>
				</div>
			</div>
		</div>
	
	
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

