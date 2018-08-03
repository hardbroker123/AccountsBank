<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
pageContext.setAttribute("basePath", basePath);
%>

<!DOCTYPE>
<html >

<head>
	<title>关联信息</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="assets/vendor/toastr/toastr.min.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/vendor/toastr/toastr.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script src="jsp/jquery/jquery-3.2.1.js"></script>
	<script type="text/javascript">
		$(function(){
			if("${sessionScope.corrinfo}"!=""){
				$(".correlationInfo").attr('disabled',true);
			};
		});
	</script>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand" style="padding-bottom:0px;padding-top:0px;width:278px;padding-left:0px;">
				<a href="first.jsp"><img src="<%=path%>font/Assets/images/logo222.png" alt="Klorofil Logo" class="img-responsive logo" style="width:400px;padding-left: 20px;padding-top: 25px;"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="请输入您要查询的内容...">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">搜索</button></span>
					</div>
				</form>
				<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>升级到VIP</span></a>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
								<span class="badge bg-danger">5</span>
							</a>
							<!--消息通知-->
							<ul class="dropdown-menu notifications">
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
								<li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
								<li><a href="#" class="more">See all notifications</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>帮助</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#">贷款常识</a></li>
								<li><a href="#">证券股票</a></li>
								<li><a href="#">信息安全</a></li>
								<li><a href="#">我的客服</a></li>
							</ul>
						</li>
						<c:if test="${sessionScope.userLogin!=null}">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user.png" class="img-circle" alt="Avatar"> <span>${sessionScope.userLogin.userName }</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="#"><i class="lnr lnr-user"></i> <span>我的额度</span></a></li>
									<li><a href="#"><i class="lnr lnr-envelope"></i> <span>我的信息</span></a></li>
									<li><a href="#"><i class="lnr lnr-cog"></i> <span>个人设置</span></a></li>
									<li><a href="userRemove.action"><i class="lnr lnr-exit"></i> <span>退出登陆</span></a></li>
								</ul>
							</li>
						</c:if>
						<c:if test="${sessionScope.userLogin==null}">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <span>我的</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
								<ul class="dropdown-menu">
									<li><a href="page-login.jsp"><i class="lnr lnr-user"></i> <span>登陆</span></a></li>
									<li><a href="page-regist.jsp"><i class="lnr lnr-envelope"></i> <span>注册</span></a></li>
								</ul>
							</li>
						</c:if>

						<li>
							<a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="fuckyou" target="_blank"><i class="fa fa-rocket"></i> <span>网络银行</span></a>
						</li>

					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- 左侧 navbar -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="index.jsp" class=""><i class="lnr lnr-home"></i> <span>首页</span></a></li>
						<li><a href="<%=basePath%>jsp/getPerInfoByRegId.action" class=""><i class="lnr lnr-code"></i> <span>个人信息</span></a></li>
						<li>
							<a href="#subPages1" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>资产信息</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages1" class="collapse ">
								<ul class="nav">
									<li><a href="<%=basePath%>jsp/selectCarInfo.action" class="">车产信息</a></li>
									<li><a href="<%=basePath%>jsp/selectHouses.action" class="">房产信息</a></li>
								</ul>
							</div>
						</li>
						<li><a href="<%=basePath%>jsp/getOneCompanyInfo.action" class=""><i class="lnr lnr-code"></i> <span>企业信息</span></a></li>
						<li><a href="panels.jsp" class=""><i class="lnr lnr-cog"></i> <span>联系人信息</span></a></li>
						<li><a href="notifications.jsp" class="active"><i class="lnr lnr-alarm"></i> <span>关联信息</span></a></li>
						<li>
							<a href="#subPages2" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>登出\修改密码</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages2" class="collapse ">
								<ul class="nav">
									<li><a href="page-regist.jsp" class="">注册</a></li>
									<li><a href="page-login.jsp" class="">登陆</a></li>
									<li><a data-toggle="modal" data-target="#passDlg" href="">修改密码</a></li>
								</ul>
							</div>
						</li>
						<li><a href="loanTables.jsp" class=""><i class="lnr lnr-dice"></i> <span>贷款查询</span></a></li>
						<li><a href="loanApply/apply.jsp" class=""><i class="lnr lnr-text-format"></i> <span>贷款申请</span></a></li>
						<li><a href="icons.jsp" class=""><i class="lnr lnr-linearicons"></i> <span>客服反馈</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- 左侧narbar 结束 -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">关联信息</h3>
					<div class="row">
					<div class="col-md-3"></div>
						<div class="col-md-6">
							<!-- 个人信息表单 -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">关联信息</h3>
								</div>
								<div class="panel-body">

									<div class="input-group">
										<div class="input-group-addon">QQ号码</div>
										<input class="form-control correlationInfo" placeholder="请输入QQ号码" type="text" style="width:240px" value="${sessionScope.corrinfo.qqNumber}">
									</div>
									<br>
									<div class="input-group">
										<div class="input-group-addon">微信账号</div>
										<input class="form-control correlationInfo" placeholder="请输入微信账号" type="text" style="width:240px" value="${sessionScope.corrinfo.weChat}">
									</div>
									<br>
									<div class="input-group">
										<a href="notifications.jsp"><button class="btn btn-primary" type="button">修改</button></a>
									</div>
								</div>
							</div>
							<!-- END INPUT GROUPS -->


						</div>
					</div>
				</div>
				<!-- END MAIN CONTENT -->
			</div>
	<!-- 产品介绍结束 -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">Copyright &copy; 2018.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="666">版权所有&nbsp;翻版必究</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">小额贷款公司</a></p>
			</div>
		</footer>
	<!-- END WRAPPER -->
	</div>
	<!-- END WRAPPER -->
	
	<!-- 模态框（Modal） -->
<!-- 修改 -->
<div id="passDlg" class="modal fade"  tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改密码</h4>
            </div>
            <div class="container">
			<form class="form-horizontal" id="myform"  method="post">
			<div class="form-group">
			<label class="col-md-2 control-label">旧密码：</label>
			<div class="col-md-3 ">
			<input type="password" id="oldPass" name="oldPass" class="form-control form-control-static"  placeholder="请输入原始密码">
			<input  type="hidden" id="pass" value="${PASS }" name="password">
			<input  type="hidden" id="uid" value="${ID }" name="id">
			</div>
			</div>
			
			<div class="form-group">
			<label class="col-md-2 control-label">新密码：</label>
			<div class="col-md-3 ">
			<input type="password" id="newPass"  name="newPass" class="form-control form-control-static" placeholder="请输入新密码">
			</div>
			</div>
			
			<div class="form-group">
			<label class="col-md-2 control-label">确认密码：</label>
			<div class="col-md-3">
			<input type="password" id="againPass"  name="againPass" class="form-control form-control-static" placeholder="请输入新密码">
			</div>
			</div>
            <div class="modal-footer col-md-6">
            <!--用来清空表单数据-->
            <input type="reset" name="reset" style="display: none;" />
                <button class="btn btn-danger" data-dismiss="modal">关闭</button>
               <button type="button" onclick="" class="btn btn-primary">修改</button>
            </div>
            </form>
            </div>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


	
</body>

</html>

