<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form class="form-auth-small" action="userRegist.action" id="registForm">
								<div class="form-group" style="height:50px">
									<label for="loginName" class="control-label sr-only">真实姓名</label>
									<input type="text" class="form-control" id="loginName" value="" placeholder="请输入您的真实姓名">
									<span></span>
								</div>
								<div class="form-group" style="height:50px">
									<label for="userCardId" class="control-label sr-only">身份证号</label>
									<input type="text" class="form-control" id="userCardId" value="" placeholder="请输入您的身份证号">
									<span></span>
								</div>
								<div class="form-group" style="height:50px">
									<label for="loginPassword" class="control-label sr-only">登录密码</label>
									<input type="password" class="form-control" id="loginPassword" value="" placeholder="请输入您的登录密码">
									<span></span>
								</div>
								<div class="form-group" style="height:50px">
									<label for="reloginPassword" class="control-label sr-only">确认密码</label>
									<input type="password" class="form-control" id="reloginPassword" value="" placeholder="请输入您的确认密码">
									<span></span>
								</div>
								<div class="form-group" style="height:50px">
									<label for="userTel" class="control-label sr-only">手机号</label>
									<input type="text" class="form-control" id="userTel" value="" placeholder="请输入您的手机号">
									<span></span>
								</div>
								<div class="form-group">
               						<div id="v_container" ></div>
									 <input type="text" id="code_input" value="" />
               						<span></span>
								</div>
								<div class="bottom">
									<input type="checkbox" id="cb1" checked>我阅读并知晓"民生小微之家只用于小微企业客户"<br />
									<input type="checkbox" id="cb2" checked>我阅读并同意
									<a href="" data-toggle="modal" data-target="#myModal"><span style=color:red>《民生小微之家用户服务协议》</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
								</div>
								<button type="submit" class="btn btn-primary btn-lg btn-block" >注册</button>
							</form>
  </body>
</html>
