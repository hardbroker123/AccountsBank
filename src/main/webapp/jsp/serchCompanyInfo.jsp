<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- <base href="<%=basePath %>"> --%>
<!DOCTYPE>

<html>

<head>
	<title>企业信息</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="<%=basePath%>jsp/assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=basePath%>jsp/assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=basePath%>jsp/assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="<%=basePath%>jsp/assets/vendor/chartist/css/chartist-custom.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="<%=basePath%>jsp/assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="<%=basePath%>jsp/assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="<%=basePath%>jsp/assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="<%=basePath%>jsp/assets/img/favicon.png">
	<style type="text/css">
		#jump{
			font-family:微软雅黑;
			font-size:32px;
			color:gray;
		}
	</style>
	<script src="<%=basePath%>jsp/jquery/jquery-3.2.1.min.js"></script>
	<script src="<%=basePath%>jsp/assets/vendor/jquery/jquery.min.js"></script>
	<script src="<%=basePath%>jsp/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>jsp/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basePath%>jsp/assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="<%=basePath%>jsp/assets/scripts/klorofil-common.js"></script>
	<script>
	$(function() {
		if("${sessionScope.companyInformation}"!=""){
			$(".companyInfo").attr('disabled',true);
		};
		var options;

		var data = {
			labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
			series: [
				[200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
			]
		};

		// line chart
		options = {
			height: "300px",
			showPoint: true,
			axisX: {
				showGrid: false
			},
			lineSmooth: false,
		};

		new Chartist.Line('#demo-line-chart', data, options);

		// bar chart
		options = {
			height: "300px",
			axisX: {
				showGrid: false
			},
		};

		new Chartist.Bar('#demo-bar-chart', data, options);


		// area chart
		options = {
			height: "270px",
			showArea: true,
			showLine: false,
			showPoint: false,
			axisX: {
				showGrid: false
			},
			lineSmooth: false,
		};

		new Chartist.Line('#demo-area-chart', data, options);


		// multiple chart
		var data = {
			labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
			series: [{
				name: 'series-real',
				data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],
			}, {
				name: 'series-projection',
				data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],
			}]
		};

		var options = {
			fullWidth: true,
			lineSmooth: false,
			height: "270px",
			low: 0,
			high: 'auto',
			series: {
				'series-projection': {
					showArea: true,
					showPoint: false,
					showLine: false
				},
			},
			axisX: {
				showGrid: false,

			},
			axisY: {
				showGrid: false,
				onlyInteger: true,
				offset: 0,
			},
			chartPadding: {
				left: 20,
				right: 20
			}
		};

		new Chartist.Line('#multiple-chart', data, options);
	});
	</script>
	
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand" style="padding-bottom:0px;padding-top:0px;width:278px;padding-left:0px;">
				<a href="first.jsp"><img src="<%=basePath%>font/Assets/images/logo222.png" alt="Klorofil Logo" class="img-responsive logo" style="width:400px;padding-left: 20px;padding-top: 25px;"></a>
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
						<li><a href="<%=basePath%>jsp/getOneCompanyInfo.action" class="active"><i class="lnr lnr-code"></i> <span>企业信息</span></a></li>
						<li><a href="panels.jsp" class=""><i class="lnr lnr-cog"></i> <span>联系人信息</span></a></li>
						<li><a href="notifications.jsp" class=""><i class="lnr lnr-alarm"></i> <span>关联信息</span></a></li>
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
			<div class="main-content">
				basepath=<%=basePath %>
				<h3 class="page-title">企业基本信息</h3>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<!-- 资产 -->
						<div class="panel">
							<div class="panel-heading">
								<h3 class="panel-title">填写企业基本资产信息</h3>
							</div>
							<div class="panel-body">
								<div class="input-group">
									<div class="input-group-addon">企业名称</div>
									<input class="form-control companyInfo" placeholder="请输入企业工商注册名称"
										type="text" name="companyName" id="companyName"
										value="${sessionScope.companyInformation.companyName}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<div class="input-group-addon">营业执照</div>
									<input class="form-control companyInfo" placeholder="请输入营业执照编号" type="text"
										name="businessLicense" id="businessLicense"
										value="${sessionScope.companyInformation.businessLicense}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<div class="input-group-addon">法定代表人</div>
									<input class="form-control companyInfo" placeholder="请输入法定代表人姓名"
										type="text" name="legalRepresentative"
										id="legalRepresentative"
										value="${sessionScope.companyInformation.legalRepresentative}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<div class="input-group-addon">注册资本金</div>
									<input class="form-control companyInfo" placeholder="请输入注册资本金（单位：万元）"
										type="text" name="registeredCapital" id="registeredCapital"
										value="${sessionScope.companyInformation.registeredCapital}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<div class="input-group-addon">企业所在地</div>
									<input class="form-control companyInfo" placeholder="如:北京市顺义区顺安南路68号"
										type="text" name="locationOfCompany" id="locationOfCompany"
										value="${sessionScope.companyInformation.locationOfCompany}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<div class="input-group-addon">银联商户号</div>
									<input class="form-control companyInfo" placeholder="请输入银联商户号" type="text"
										name="unionpayMerchanNumber" id="unionpayMerchanNumber"
										value="${sessionScope.companyInformation.unionpayMerchanNumber}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<div class="input-group-addon">税务注册号</div>
									<input class="form-control companyInfo" placeholder="请输入税务注册号" type="text"
										name="taxRegistrationNumber" id="taxRegistrationNumber"
										value="${sessionScope.companyInformation.taxRegistrationNumber}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<div class="input-group-addon">从业年限</div>
									<input class="form-control companyInfo" placeholder="1~99" type="text"
										name="employedYear" id="employedYear"
										value="${sessionScope.companyInformation.employedYear}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<div class="input-group-addon">本地经营年限</div>
									<input class="form-control companyInfo" placeholder="1~99" type="text"
										name="businessYear" id="businessYear"
										value="${sessionScope.companyInformation.businessYear}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<div class="input-group-addon">雇员人数</div>
									<input class="form-control companyInfo" name="employeesNumber"
										id="employeesNumber"
										value="${sessionScope.companyInformation.employeesNumber}">
								</div>
								<span class="myspan"></span> <br>
								<div class="input-group">
									<a href="jsp/charts.jsp"><input class="btn btn-primary"
										type="submit" id="subComInfo" value="修改"></a>
								</div>

							</div>
						</div>
					</div>
					<!-- END INPUT GROUPS -->

				</div>
			</div>
		</div>
	</div>
	<!-- END MAIN -->
	<!-- 产品介绍结束 -->
	<div class="clearfix"></div>
	<footer>
		<div class="container-fluid">
			<p class="copyright">
				Copyright &copy; 2018.Company name All rights reserved.More
				Templates <a href="http://www.cssmoban.com/" target="_blank"
					title="666">版权所有&nbsp;翻版必究</a> - Collect from <a
					href="http://www.cssmoban.com/" title="网页模板" target="_blank">小额贷款公司</a>
			</p>
		</div>
	</footer>
	<!-- END WRAPPER -->
	<!-- END WRAPPER -->
	<!-- Javascript -->

</body>

</html>

