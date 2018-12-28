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
		<title>圆图教育</title>
        <!-- 引入jQuery核心js文件 -->
		<script src="js/jquery-1.11.3.min.js"></script>
		<!-- 引入Bootstrap核心样式文件 -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
    
        <script type="text/javascript">
        function checkForm(){
    		
			var name=document.getElementById("name");
			var eValue=document.getElementById("phone");
			var pValue=document.getElementById("search");
			if(name.value.length==0){
				alert("请输入姓名！");
				return false;
			}else if(pValue.value.length==0){
				alert("请选择类别！");
				return false;
			}else if(!(/^1[3|4|5|8|7][0-9]\d{8}$/.test(eValue.value))){
				alert("请输入正确手机号！");
				return false;
			}
			return true;
		}
		
	
	


 $(function(){
	 
	 $("#search").mouseup(function(){
		 var url="${pageContext.request.contextPath}/BaseDictAction"
		 var word=$(this).val();
		 $("#s_category").empty();
		 if (word==""){
			 return false;
			 
		 }
		 $.post(url,{dict_type_name:word},
				  function(data){
			      $.each( data, function(i, json){
				  $("#s_category").append("<option  value="+json.dict_id+">"+json.dict_item_name+"</option>");
				});
				  },"json");
		 })
	 })
</script>
		
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
        <!--center-->
        <div class="container-fluid">
        	<div class="col-md-4 col-md-offset-4">
        		<form class="form-horizontal" action="${pageContext.request.contextPath }/ApplyAction_add" method="post" enctype="multipart/form-data"  onsubmit="return checkForm()">
        			<input type="hidden" name="u_id" id="u_id" value="<s:property value="#session.user.u_id"/>" />
        			<div class="form-group">
        				<label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
        				<div class="col-sm-10">
        					<input type="text" class="form-control" id="name" name="s_name" autocomplete="off" placeholder="姓名">
        				</div>
        			</div>
        			<div class="form-group">
        
        				<label for="inputPassword3" class="col-sm-2 control-label">手机号</label>
        				<div class="col-sm-10">
        					<input type="text" class="form-control" id="phone" name="s_phone" autocomplete="off" placeholder="手机号">
        				</div>
        			</div>
        			<div class="form-group">
        				<label for="inputPassword3" class="col-sm-2 control-label">阶段</label>
        				<div class="col-sm-10">
        					<select class="form-control" id="search" >
        						<option>---请选择---</option>
        						<option>小学教育</option>
        						<option>初中教育</option>
        						<option>高中教育</option>
        						<option>小语种教育</option>
        					</select>
        				</div>
        			</div>
        			
        			<div class="form-group">
        				<label for="inputPassword3" class="col-sm-2 control-label">年级</label>
        				<div class="col-sm-10">
        					<input type="text" class="form-control" id="s_class" name="s_class" autocomplete="off" placeholder="例:一年级,初一,高一,小语种不填">
        				</div>
        			</div>
        			
        			<div class="form-group">
        				<label for="inputPassword3" class="col-sm-2 control-label">科目</label>
        				<div class="col-sm-10">
        					<select class="form-control" id="s_category" name="s_category.dict_id">
        						
        					</select>
        				</div>
        			</div>
        			<div class="form-group">
        				<div class="col-sm-offset-2 col-sm-10">
        					<button type="submit" class="btn btn-primary">报名</button>
        				</div>
        			</div>
        			 <span class="text-danger"><s:property value="exception.message"/></span>
        		</form>        		
        		
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
		
		<!-- 引入BootStrap核心js文件 -->
		<script src="js/bootstrap.js"></script>
	</body>

</html>
