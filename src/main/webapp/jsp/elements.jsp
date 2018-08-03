<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en">

<head>
	<title>个人信息</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
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
	<!-- jquery -->
    <script src="js/jquery-1.8.3-min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
	  <script>
	  $(function(){
	  //从session作用域中获取所有信息
	  	getAllData();
	  	//表单按钮样式显示
	  if(${sessionScope.PerInfo == null}){
	  		//
		  $("#myupdate").hide();
		  $("#myinsert").show();
	  
	  }else{
	  	  $("#myupdate").show();
	  	   $("#myinsert").hide();
	  }
	  /* 计算年龄 */
	 	 /* 身份证号 */
	 	 var card = $("#personCardId").val();
	 	 /* 出生日期 */
	  	var str = ($("#personCardId").val()).substring(6,10);
		//获取当前年
		var year=new Date().getFullYear();
	  	//当前用户年龄
	  	var personAge = year-str;
	  	//添加到表单
	  $("#personAge").val(personAge);
	  
	  //获取性别 
			if (parseInt(card.substr(16, 1)) % 2 == 1) { 
		 			$("#personSex").val("男");							//男 
			} else { 
 					$("#personSex").val("女");								//女 
			} 
			/* 配偶情况 */	
			$("#maritalStatus").click(function(){
				if($("#maritalStatus").val()=="未婚"){
						$("#showtime").hide();
					}else if($("#maritalStatus").val()=="已婚"){
						$("#showtime").show();
					}
			
			});
			
			$("#city").click(function() {
   				 /* 填充户籍归属*/
   				 var city = $("#city").val();
   				 var province = $("#province").val();
   				 $("#registeredResidence").val(province+city);
			});
			
			$("#personSex").click(function(){
					if($("#personSex").val()=="option0"){
						$("#personSex").parent().next("span").html("选择状态出错！").show();
						return;
					}else{
						$("#personSex").parent().next("span").hide();
					}
			
			});
			/* 配偶 */
			$("#spousalName").blur(function(){
				if($("#spousalName").val() == ''){
					$("#spousalName").parent().next("span").html("配偶姓名不能为空！").show();
					return ;
				}else if(!/^(?=.*?[\u4E00-\u9FA5])[\d\u4E00-\u9FA5]+/.test($("#spousalName").val())){
					$("#spousalName").parent().next("span").html("配偶姓名不合法").show();
					return ;
				}else{
					$("#spousalName").parent().next("span").hide();
				}
			});
			
			$("#spousalCardId").blur(function(){
				if($("#spousalCardId").val() == ''){
					$("#spousalCardId").parent().next("span").html("配偶身份证不能为空！").show();
					return ;
				}else if(!/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|[xX])$/.test($("#spousalCardId").val())){
					$("#spousalCardId").parent().next("span").html("配偶身份证不合法").show();
					return ;
				}else{
					$("#spousalCardId").parent().next("span").hide();
				}
			});
			
			$("#spousalTel").blur(function(){
				if($("#spousalTel").val() == ''){
					$("#spousalTel").parent().next("span").html("配偶身份证不能为空！").show();
					return ;
				}else if(!/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/.test($("#spousalTel").val())){
					$("#spousalTel").parent().next("span").html("配偶身份证不合法").show();
					return ;
				}else{
					$("#spousalTel").parent().next("span").hide();
				}
			});
			
			$("#detailedAddress").blur(function(){
				if($("#detailedAddress").val() == ''){
					$("#detailedAddress").parent().next("span").html("详细地址不能为空！").show();
					return ;
				}else if(!/^(?=.*?[\u4E00-\u9FA5])[\d\u4E00-\u9FA5]+/.test($("#detailedAddress").val())){
					$("#detailedAddress").parent().next("span").html("详细地址不合法").show();
					return ;
				}else{
					$("#detailedAddress").parent().next("span").hide();
				}
			});
			
			$("#housePhone").blur(function(){
				if($("#housePhone").val() == ''){
					$("#housePhone").parent().next("span").html("家庭电话不能为空！").show();
					return ;
				}else if(!/^0\d{2,3}-?\d{7,8}$/.test($("#housePhone").val())){
					$("#housePhone").parent().next("span").html("家庭电话不合法").show();
					return ;
				}else{
					$("#housePhone").parent().next("span").hide();
				}
			});
			
			$("#childrenNumber").blur(function(){
				if($("#childrenNumber").val() == ''){
					$("#childrenNumber").parent().next("span").html("子女数量不能为空！").show();
					return ;
				}else if(!/^[0-9]{1,20}$/.test($("#childrenNumber").val())){
					$("#childrenNumber").parent().next("span").html("子女数量不合法").show();
					return ;
				}else{
					$("#childrenNumber").parent().next("span").hide();
				}
			});
			
			$("#housingSituation").blur(function(){
				if($("#housingSituation").val() == ''){
					$("#housingSituation").parent().next("span").html("住房情况不能为空！").show();
					return ;
				}else if(!/^[\u4e00-\u9fa5]{1,20}$/.test($("#housingSituation").val())){
					$("#housingSituation").parent().next("span").html("住房情况不合法").show();
					return ;
				}else{
					$("#housingSituation").parent().next("span").hide();
				}
			});
			
			$("#educational").blur(function(){
				if($("#educational").val() == ''){
					$("#educational").parent().next("span").html("教育背景不能为空！").show();
					return ;
				}else if(!/^[\u4e00-\u9fa5]{1,20}$/.test($("#educational").val())){
					$("#educational").parent().next("span").html("教育背景不合法").show();
					return ;
				}else{
					$("#educational").parent().next("span").hide();
				}
			});
			
			/* 表单提交 */
			$("#registForm").submit(function(){
				$("input").trigger("blur");
				if($("#maritalStatus").val() == "已婚"){
					if($("#registForm span:visible").size()>0){
						return false;
					}
				}else if($("#maritalStatus").val() == "未婚"){
					if($("#registForm span:visible").size()>0){
						return false;
					}
				}else{
					return true;
				}
			});
	  
	  });
	  
	   /*查询所有信息*/
	  function getAllData(){
          $.ajaxSettings.async = false;
          $.getJSON("getPerInfoByRegId.action", function(data){
              return;
          });
	  }
			/* 修改基本信息 */
			function checkForm1(){
				var flag = true;
				$("#myform1 input").each(function(){
					if($(this).val() == ''){
						flag = false;
						return;
					}
				});
				return true;
			}	
	  </script>
		<script src="js/distpicker.data.js"></script>
	  <script src="js/distpicker.js"></script>
	  <script src="js/main.js"></script><!-- 城市选择插件 -->
	  
	<style >
		.myspan{
			color:red;
		}
	</style>
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.html"><img src="assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>
				<form class="navbar-form navbar-left">
					<div class="input-group">
						<input type="text" value="" class="form-control" placeholder="Search dashboard...">
						<span class="input-group-btn"><button type="button" class="btn btn-primary">Go</button></span>
					</div>
				</form>
				<div class="navbar-btn navbar-btn-right">
					<a class="btn btn-success update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
								<span class="badge bg-danger">5</span>
							</a>
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
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>Help</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#">Basic Use</a></li>
								<li><a href="#">Working With Data</a></li>
								<li><a href="#">Security</a></li>
								<li><a href="#">Troubleshooting</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="assets/img/user.png" class="img-circle" alt="Avatar"> <span>Samuel</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="#"><i class="lnr lnr-user"></i> <span>My Profile</span></a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>
								<li><a href="#"><i class="lnr lnr-cog"></i> <span>Settings</span></a></li>
								<li><a href="#"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul>
						</li>
						<!-- <li>
							<a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="index.jsp" class=""><i class="lnr lnr-home"></i> <span>首页</span></a></li>
						<li><a href="elements.jsp" class="active"><i class="lnr lnr-code"></i> <span>个人信息</span></a></li>
						<li>
							<a href="#subPages1" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>资产信息</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages1" class="collapse ">
								<ul class="nav">
									<li><a href="charts-car.jsp" class="">车产信息</a></li>
									<li><a href="charts-house.jsp" class="">房产信息</a></li>
								</ul>
							</div>
						</li>
						<li><a href="charts.jsp" class=""><i class="lnr lnr-code"></i> <span>企业信息</span></a></li>
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
						<li><a href="tables.html" class=""><i class="lnr lnr-dice"></i> <span>金融证券</span></a></li>
						<li><a href="typography.html" class=""><i class="lnr lnr-text-format"></i> <span>额度查询</span></a></li>
						<li><a href="icons.html" class=""><i class="lnr lnr-linearicons"></i> <span>客服反馈</span></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
 			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">填写个人信息</h3>
					<div class="row">
					<div class="col-md-3"></div>
						<div class="col-md-6">
							<!-- 个人信息表单 -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">个人信息</h3>
								</div>
								<form id="registForm" action="insertOnePerInfo.action">
								<div class="panel-body">
									<div class="input-group">
										<div class="input-group-addon">姓名</div>
										<input class="form-control" value="${sessionScope.userLogin.loginName }" type="text" id="personName" name="personName" disabled>
									</div>
									<br>
									<div class="input-group">
										<div class="input-group-addon">身份证号码</div>
										<input class="form-control" value="${sessionScope.userLogin.userCardId }" type="text" id="personCardId" name="personCardId" disabled>
									</div>
									<br>
									<div class="input-group" >
										<div class="input-group-addon">性别</div>
										<input class="form-control" value="${sessionScope.PerInfo.personSex == null?null:sessionScope.PerInfo.personSex }" type="text" id="personSex" name="personSex" disabled>
									</div>
									<br>
									<div class="input-group">
										<div class="input-group-addon">年龄</div>
										<input class="form-control"  value="${sessionScope.PerInfo.personAge == null?null:sessionScope.PerInfo.personAge }" type="text" id="personAge" name="personAge" disabled>
									</div>
									<br>
									
									<div class="form-group">
										<div class="input-group col-xs-12">
											<div class="input-group-addon"  >实际居住地</div>
											 <!-- 地区控件 -->
      										<div data-toggle="distpicker">
       											<div class="input-group-btn">
          											<select value="${sessionScope.PerInfo.province == null?null:sessionScope.PerInfo.province }" class="form-control" style="width: auto;" id="province"   name="province"><option  data-code="" selected="">—— 省 ——</option><option value="北京市" data-code="110000" >北京市</option><option value="天津市" data-code="120000">天津市</option><option value="河北省" data-code="130000">河北省</option><option value="山西省" data-code="140000">山西省</option><option value="内蒙古自治区" data-code="150000">内蒙古自治区</option><option value="辽宁省" data-code="210000">辽宁省</option><option value="吉林省" data-code="220000">吉林省</option><option value="黑龙江省" data-code="230000">黑龙江省</option><option value="上海市" data-code="310000">上海市</option><option value="江苏省" data-code="320000">江苏省</option><option value="浙江省" data-code="330000">浙江省</option><option value="安徽省" data-code="340000">安徽省</option><option value="福建省" data-code="350000">福建省</option><option value="江西省" data-code="360000">江西省</option><option value="山东省" data-code="370000">山东省</option><option value="河南省" data-code="410000">河南省</option><option value="湖北省" data-code="420000">湖北省</option><option value="湖南省" data-code="430000">湖南省</option><option value="广东省" data-code="440000">广东省</option><option value="广西壮族自治区" data-code="450000">广西壮族自治区</option><option value="海南省" data-code="460000">海南省</option><option value="重庆市" data-code="500000">重庆市</option><option value="四川省" data-code="510000">四川省</option><option value="贵州省" data-code="520000">贵州省</option><option value="云南省" data-code="530000">云南省</option><option value="西藏自治区" data-code="540000">西藏自治区</option><option value="陕西省" data-code="610000">陕西省</option><option value="甘肃省" data-code="620000">甘肃省</option><option value="青海省" data-code="630000">青海省</option><option value="宁夏回族自治区" data-code="640000">宁夏回族自治区</option><option value="新疆维吾尔自治区" data-code="650000">新疆维吾尔自治区</option><option value="台湾省" data-code="710000">台湾省</option><option value="香港特别行政区" data-code="810000">香港特别行政区</option><option value="澳门特别行政区" data-code="820000">澳门特别行政区</option></select>
         									 		<select value="${sessionScope.PerInfo.city == null?null:sessionScope.PerInfo.city }" class="form-control" style="width: auto;" id="city"  name="city"><option  data-code="" selected="">—— 市 ——</option><option value="北京市市辖区" data-code="110100" >北京市市辖区</option></select>
         							 				<select value="${sessionScope.PerInfo.district == null?null:sessionScope.PerInfo.district }" class="form-control" style="width: auto;" id="district"  name="district"><option  data-code="" selected="">—— 区 ——</option><option value="东城区" data-code="110101" >东城区</option><option value="西城区" data-code="110102">西城区</option><option value="朝阳区" data-code="110105">朝阳区</option><option value="丰台区" data-code="110106">丰台区</option><option value="石景山区" data-code="110107">石景山区</option><option value="海淀区" data-code="110108">海淀区</option><option value="门头沟区" data-code="110109">门头沟区</option><option value="房山区" data-code="110111">房山区</option><option value="通州区" data-code="110112">通州区</option><option value="顺义区" data-code="110113">顺义区</option><option value="昌平区" data-code="110114">昌平区</option><option value="大兴区" data-code="110115">大兴区</option><option value="怀柔区" data-code="110116">怀柔区</option><option value="平谷区" data-code="110117">平谷区</option><option value="密云区" data-code="110118">密云区</option><option value="延庆区" data-code="110119">延庆区</option></select>
   									   			</div>
   									  		</div>
   									   		 <!--  结束-->
										</div>
									</div>
										
									<div class="input-group">
										<div class="input-group-addon">户籍归属</div>
										<input class="form-control" value="${sessionScope.PerInfo.registeredResidence == null?null:sessionScope.PerInfo.registeredResidence }" placeholder="请输入户籍归属" type="text" id="registeredResidence" name="registeredResidence">
									</div>
									<br>
									<div class="input-group">
										<div class="input-group-addon">婚姻情况</div>
										<select class="form-control" id="maritalStatus" name="maritalStatus" value="${sessionScope.PerInfo.maritalStatus == null?null:sessionScope.PerInfo.maritalStatus }">
											<option value="已婚">已婚</option>
											<option value="未婚">未婚</option>
										</select> 
									</div>
										
									<br>
									<!-- begin showtime -->
									<div id="showtime">
									<div class="input-group" >
										<div class="input-group-addon" >配偶姓名</div>
										<input value="${sessionScope.PerInfo.spousalName == null?null:sessionScope.PerInfo.spousalName }" class="form-control" placeholder="请输入配偶姓名" type="text"  id="spousalName" name="spousalName" >
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">配偶证件号</div>
										<input value="${sessionScope.PerInfo.spousalCardId == null?null:sessionScope.PerInfo.spousalCardId }" class="form-control" placeholder="请输入配偶证件号" type="text" id="spousalCardId" name="spousalCardId">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon" >配偶手机号码</div>
										<input value="${sessionScope.PerInfo.spousalTel == null?null:sessionScope.PerInfo.spousalTel }" class="form-control" placeholder="请输入配偶手机号码" type="text"  id="spousalTel" name="spousalTel">
									</div>
										<span class="myspan"></span>
									<br>
									</div>
									<!-- end of showtime -->
									<div class="input-group">
										<div class="input-group-addon">详细地址</div>
										<input value="${sessionScope.PerInfo.detailedAddress == null?null:sessionScope.PerInfo.detailedAddress }" class="form-control" placeholder="请输入详细地址" type="text" id="detailedAddress" name="detailedAddress">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">家庭电话</div>
										<input value="${sessionScope.PerInfo.housePhone == null?null:sessionScope.PerInfo.housePhone }" class="form-control" placeholder="如：0432-4958941" type="text" id="housePhone" name="housePhone" >
									</div>
									<span class="myspan"></span>
									<br>
									
									
									<div class="input-group">
										<div class="input-group-addon">子女情况（数量）</div>
										<input value="${sessionScope.PerInfo.childrenNumber == null?null:sessionScope.PerInfo.childrenNumber }" class="form-control" placeholder="请输入子女情况" type="text" id="childrenNumber" name="childrenNumber">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">住房情况</div>
										<input value="${sessionScope.PerInfo.housingSituation == null?null:sessionScope.PerInfo.housingSituation }" class="form-control" placeholder="请输入住房情况" type="text" id="housingSituation" name="housingSituation">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">教育情况</div>
										<input value="${sessionScope.PerInfo.educational == null?null:sessionScope.PerInfo.educational }" class="form-control" placeholder="请输入学历信息" type="text" id="educational" name="educational">
									</div>
										<span class="myspan"></span>
									<br>
									
									<div class="row">
									<div class="col-md-1">
									<div id="myinsert">
										<div class="input-group" class="mycenter">
											<button class="btn btn-primary" type="submit" id="" >提交</button>
										</div>
										</div>
									</div>
									<div class="col-md-11">
										</div>
										<div id="myupdate">
										<div class="input-group" class="mycenter">
											<button class="btn btn-primary" data-toggle="modal" data-target="#passDlg1" type="button" >修改</button>
										</div>
										</div>
									</div>
								</div>
								</form>
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
	<div id="passDlg1" class="modal fade"  tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">修改信息</h4>
            </div>
            <div class="container">
			<form class="form-horizontal" id="myform1" action="updateOnePerInfo.action" >
			<div class="form-group">
			<label class="col-md-2 control-label">实际居住地：</label>
			<div class="col-md-3 ">
			<input type="text" id="detailedAddress" name="detailedAddress" value="${PerInfo.detailedAddress }" class="form-control form-control-static"  placeholder="请输入实际居住地">
			<%-- <input  type="hidden" id="pass" value="${PASS }" name="password">
			<input  type="hidden" id="uid" value="${ID }" name="id"> --%>
			</div>
			</div>
			
			<div class="form-group">
			<label class="col-md-2 control-label">户籍归属：</label>
			<div class="col-md-3 ">
			<input type="text" id="registeredResidence" value="${PerInfo.registeredResidence }" name="registeredResidence" class="form-control form-control-static" placeholder="请输入户籍归属">
			</div>
			</div>
			
			<div class="form-group">
			<label class="col-md-2 control-label">家庭电话：</label>
			<div class="col-md-3">
			<input type="text" id="housePhone"  value="${PerInfo.housePhone }"  name="housePhone" class="form-control form-control-static" placeholder="请输入家庭电话">
			</div>
			</div>
			<div class="form-group">
			<label class="col-md-2 control-label">教育情况：</label>
			<div class="col-md-3">
			<input type="text" id="educational"  value="${PerInfo.educational }"  name="educational" class="form-control form-control-static" placeholder="请输入家庭电话">
			</div>
			</div>
			<div class="form-group">
			<label class="col-md-2 control-label">身份证号：</label>
			<div class="col-md-3">
			<input type="text" id="personCardId"  value="${PerInfo.personCardId }"  name="personCardId" class="form-control form-control-static" placeholder="请输入家庭电话">
			</div>
			</div>
			<div class="form-group">
			<label class="col-md-2 control-label">姓名：</label>
			<div class="col-md-3">
			<input type="text" id="personName"  value="${PerInfo.personName }"  name="personName" class="form-control form-control-static" placeholder="请输入家庭电话">
			</div>
			</div>
			<div class="form-group">
			<label class="col-md-2 control-label">年龄：</label>
			<div class="col-md-3">
			<input type="text" id="personAge"  value="${PerInfo.personAge }"  name="personAge" class="form-control form-control-static" placeholder="请输入家庭电话">
			</div>
			</div>
            <div class="modal-footer col-md-6">
            <!--用来清空表单数据-->
           <!--  <input value="1" type="reset" name="reset" style="display: none;" /> -->
                <button class="btn btn-danger" data-dismiss="modal">关闭</button>
               <button type="submit" onclick="checkForm1()" class="btn btn-primary">修改</button>
            </div>
            </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
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
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
</body>

</html>

