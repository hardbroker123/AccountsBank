<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>Login</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
    <script src="js/jquery-1.8.3-min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
	
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center"><img src="assets/img/logo-dark.png" alt="Klorofil Logo"></div>
								<p class="lead">登录到您的账户</p>
							</div>
							<form class="form-auth-small" action="userLogin.action" id="loginform">
								<div class="form-group">
									<label for="loginName" class="control-label ">账号</label>
									<input type="text" class="form-control" id="loginName" name="loginName" value="" placeholder="账号">
								</div>
								<div class="form-group">
									<label for="loginPassword" class="control-label ">密码</label>
									<input type="password" class="form-control" id="loginPassword" name="loginPassword" value="" placeholder="密码">
								</div>
								<div class="form-group clearfix">
									<label class="fancy-checkbox element-left">
										<input type="checkbox">
										<span>记住我</span>
									</label>
								</div>
								<button type="submit" class="btn btn-primary btn-lg btn-block" id="">登录</button>
								<div class="bottom">
									<span class="helper-text "><i class="fa fa-lock"></i> <a href="PwdFind1.jsp">忘记密码?</a></span>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<span class="helper-text"><i class="fa fa-lock"></i> <a href="page-regist.jsp">没有账号，注册一个</a></span>
								</div>
							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">极光小额贷款公司</h1>
							<p>制作团队:张继源&nbsp;<strong>于淼</strong>&nbsp;张继源 &nbsp;张继源</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
</body>
</html>
