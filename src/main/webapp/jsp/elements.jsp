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
    
		<script src="js/distpicker.data.js"></script>
	  <script src="js/distpicker.js"></script>
	  <script src="js/main.js"></script><!-- 城市选择插件 -->
	  <script src="laydate/laydate.js"></script><!-- 日期插件 -->
	<script type="text/javascript">
		$(function(){
			var reg=/^[\u4e00-\u9fa5]{2,4}$/;
			$("#name").blur(function(){
				if($("#name").val()==""||$("#name").val()==null){
					$("#name").parent().next("span").html("*姓名输入不能为空！").show();
					return;
				}
				if(!reg.test($("#name").val())){
					$("#name").parent().next("span").html("*姓名输入错误！").show();
				}else{
					$("#name").parent().next("span").hide();
				}
			});
			
			var reg1=/^\d{18}$/;
			$("#IDCard").blur(function(){
				if($("#IDCard").val()==""||$("#IDCard").val()==null){
					$("#IDCard").parent().next("span").html("*身份证号码输入不能为空！").show();
					return;
				}
				if(!reg1.test($("#IDCard").val())){
					$("#IDCard").parent().next("span").html("*身份证号码输入错误！").show();
				}else{
					$("#IDCard").parent().next("span").hide();
				}
			});
			
			$("#xingbie").click(function(){
				if($("#xingbie").val()=="option0"){
					$("#xingbie").parent().next("span").html("*选择状态出错！").show();
					return;
				}
				if($("#xingbie").val()=="option1"){
					$("#xingbie").parent().next("span").hide();
				}else if($("#xingbie").val()=="option2"){
					$("#xingbie").parent().next("span").hide();
				}
			});
			
			var reg3=/^\d{2,3}$/;
			$("#nianling").blur(function(){
				if($("#nianling").val()==""||$("#nianling").val()==null){
					$("#nianling").parent().next("span").html("*年龄输入不能为空！").show();
					return;
				}
				if(!reg3.test($("#nianling").val())){
					$("#nianling").parent().next("span").html("*年龄输入错误！").show();
				}else{
					$("#nianling").parent().next("span").hide();
				}
			});
			
			var reg4=/^[\u4e00-\u9fa5]{2,6}$/;
			$("#dizhi").blur(function(){
				if($("#dizhi").val()==""||$("#dizhi").val()==null){
					$("#dizhi").parent().next("span").html("*地址输入不能为空！").show();
					return;
				}
				if(!reg3.test($("#dizhi").val())){
					$("#dizhi").parent().next("span").html("*地址输入错误！").show();
				}else{
					$("#dizhi").parent().next("span").hide();
				}
			});
			
			var reg5=/^[\u4e00-\u9fa5]{4,10}$/;
			$("#huji").blur(function(){
				if($("#huji").val()==""||$("#huji").val()==null){
					$("#huji").parent().next("span").html("*户籍输入不能为空！").show();
					return;
				}
				if(!reg3.test($("#huji").val())){
					$("#huji").parent().next("span").html("*户籍输入错误！").show();
				}else{
					$("#huji").parent().next("span").hide();
				}
			});
			
			$("#hunyin").click(function(){
				if($("#hunyin").val()=="option1"){
					$("#hunyin").parent().next("span").html("*选择状态出错！").show();
					return;
				}
				if($("#hunyin").val()=="option2"){
					$("#hunyin").parent().next("span").hide();
					$("input[readonly='readonly']").attr("readOnly",false);
				}
				if($("#hunyin").val()=="option3"){
					$("#qw,#qw2,#qw3").parent().next("span").hide();
					$("#qw,#qw2,#qw3").attr("readOnly",true);
				}
				
			});
			
			var regn=/^[\u4e00-\u9fa5]{2,4}$/;
			$("#qw").blur(function(){
				if($("#qw").val()==""||$("#qw").val()==null){
					$("#qw").parent().next("span").html("*配偶姓名输入不能为空！").show();
				}
				if(!regn.test($("#qw").val())){
					$("#qw").parent().next("span").html("*配偶姓名输入错误").show();					
				}else{
					$("#qw").parent().next("span").hide();					
				}
			});
			
			var regid=/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|[xX])$/;
			$("#qw2").blur(function(){
				if($("#qw2").val()==""||$("#qw2").val()==null){
					$("#qw2").parent().next("span").html("*身份证号码输入不能为空！").show();
					return;
				}
				if(!regid.test($("#qw2").val())){
					$("#qw2").parent().next("span").html("*身份证号码输入错误！").show();
				}else{
					$("#qw2").parent().next("span").hide();
				}
			});
			var regpho=/^\d{11}$/;
			$("#qw3").blur(function(){
				if($("#qw3").val()==""||$("#qw3").val==null){
					$("#qw3").parent().next("span").html("*配偶手机号输入不能为空").show();
					return;
				}
				if(!regpho.test($("#qw3").val())){
					$("#qw3").parent().next("span").html("*手机号码输入错误！").show();
				}else{
					$("#qw3").parent().next("span").hide();
				}
			});
			
			var regzn=/^\d{1,2}$/;
			$("#zinv").blur(function(){
				if($("#zinv").val()==""||$("#zinv").val()==null){
					$("#zinv").parent().next("span").html("*子女信息输入不能为空！").show();
					return;
				}
				if(!regzn.test($("#zinv").val())){
					$("#zinv").parent().next("span").html("*子女信息输入错误！").show();
				}else{
					$("#zinv").parent().next("span").hide();
				}
			});
			
			var regzhuf=/^[\u4e00-\u9fa5]{2,10}$/;
			$("#zhufang").blur(function(){
				if($("#zhufang").val()==""||$("#zhufang").val()==null){
					$("#zhufang").parent().next("span").html("*住房信息输入不能为空！").show();
					return;
				}
				if(!regzhuf.test($("#zhufang").val())){
					$("#zhufang").parent().next("span").html("*住房信息输入错误！").show();
				}else{
					$("#zhufang").parent().next("span").hide();
				}
			});
			
			var regjiaoy=/^[\u4e00-\u9fa5]{2,6}$/;
			$("#jiaoyu").blur(function(){
				if($("#jiaoyu").val()==""||$("#jiaoyu").val()==null){
					$("#jiaoyu").parent().next("span").html("*学历信息不能为空！").show();
					return;
				}
				if(!regjiaoy.test($("#jiaoyu").val())){
					$("#jiaoyu").parent().next("span").html("*学历信息填写错误！").show();
				}else{
					$("#jiaoyu").parent().next("span").hide();
				}
			});
			
			var regdianh=/^\d{6,7}$/;
			$("#dianhua").blur(function(){
				if($("#dianhua").val()==""||$("#dianhua").val()==null){
					$("#dianhua").parent().next("div").next("span").html("*座机信息不能为空！").show();
					return;
				}
				if(!regdianh.test($("#dianhua").val())){
					$("#dianhua").parent().next("div").next("span").html("*座机信息填写错误！").show();
				}else{
					$("#dianhua").parent().next("div").next("span").hide();
				}
			});
		});
	</script>
	<style >
		.myspan{
			color:red;
		}
	</style>
	<script>
		 lay('#version').html('-v'+ laydate.v);
    //执行一个laydate实例
    //常规用法
    laydate.render({
      elem: '#test1' //指定元素
    });
	</script>
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
								
								<div class="panel-body">
									<div class="input-group">
										<div class="input-group-addon">姓名</div>
										<input class="form-control" placeholder="请输入用户名" type="text" id="name">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">身份证号码</div>
										<input class="form-control" placeholder="请输入身份证号码" type="text" id="IDCard">
									</div>
									<span class="myspan"></span>
									<br>
									<div class="input-group" >
										<div class="input-group-addon">性别</div>
										<select class="form-control" id="xingbie">
											<option value="option0">请选择性别</option>
											<option value="option1">男</option>
											<option value="option2">女</option>
										</select>
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">年龄</div>
										<input class="form-control" placeholder="请输入年龄" type="text" id="nianling">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										 <div class="input-group-addon" style="width:10%">实际居住地</div>
	  										
      									<div data-toggle="distpicker">
       											 	<div class="form-group">
        											  	<!-- <label class="sr-only" for="province1">Province</label> -->
          													<select class="form-control" id="province1" style="width:32%"><option value="" data-code="">—— 省 ——</option><option value="北京市" data-code="110000" selected="">北京市</option><option value="天津市" data-code="120000">天津市</option><option value="河北省" data-code="130000">河北省</option><option value="山西省" data-code="140000">山西省</option><option value="内蒙古自治区" data-code="150000">内蒙古自治区</option><option value="辽宁省" data-code="210000">辽宁省</option><option value="吉林省" data-code="220000">吉林省</option><option value="黑龙江省" data-code="230000">黑龙江省</option><option value="上海市" data-code="310000">上海市</option><option value="江苏省" data-code="320000">江苏省</option><option value="浙江省" data-code="330000">浙江省</option><option value="安徽省" data-code="340000">安徽省</option><option value="福建省" data-code="350000">福建省</option><option value="江西省" data-code="360000">江西省</option><option value="山东省" data-code="370000">山东省</option><option value="河南省" data-code="410000">河南省</option><option value="湖北省" data-code="420000">湖北省</option><option value="湖南省" data-code="430000">湖南省</option><option value="广东省" data-code="440000">广东省</option><option value="广西壮族自治区" data-code="450000">广西壮族自治区</option><option value="海南省" data-code="460000">海南省</option><option value="重庆市" data-code="500000">重庆市</option><option value="四川省" data-code="510000">四川省</option><option value="贵州省" data-code="520000">贵州省</option><option value="云南省" data-code="530000">云南省</option><option value="西藏自治区" data-code="540000">西藏自治区</option><option value="陕西省" data-code="610000">陕西省</option><option value="甘肃省" data-code="620000">甘肃省</option><option value="青海省" data-code="630000">青海省</option><option value="宁夏回族自治区" data-code="640000">宁夏回族自治区</option><option value="新疆维吾尔自治区" data-code="650000">新疆维吾尔自治区</option><option value="台湾省" data-code="710000">台湾省</option><option value="香港特别行政区" data-code="810000">香港特别行政区</option><option value="澳门特别行政区" data-code="820000">澳门特别行政区</option></select>
        											</div>
        										<div class="form-group">
         											 <!-- <label class="sr-only" for="city1">City</label> -->
         									 		<select class="form-control" id="city1" style="width:172px"><option value="" data-code="">—— 市 ——</option><option value="北京市市辖区" data-code="110100" selected="">北京市市辖区</option></select>
        										</div>
        										<div class="form-group">
         											 <!-- <label class="sr-only" for="district1">District</label> -->
         							 				<select class="form-control" id="district1" style="width:150px"><option value="" data-code="">—— 区 ——</option><option value="东城区" data-code="110101" selected="">东城区</option><option value="西城区" data-code="110102">西城区</option><option value="朝阳区" data-code="110105">朝阳区</option><option value="丰台区" data-code="110106">丰台区</option><option value="石景山区" data-code="110107">石景山区</option><option value="海淀区" data-code="110108">海淀区</option><option value="门头沟区" data-code="110109">门头沟区</option><option value="房山区" data-code="110111">房山区</option><option value="通州区" data-code="110112">通州区</option><option value="顺义区" data-code="110113">顺义区</option><option value="昌平区" data-code="110114">昌平区</option><option value="大兴区" data-code="110115">大兴区</option><option value="怀柔区" data-code="110116">怀柔区</option><option value="平谷区" data-code="110117">平谷区</option><option value="密云区" data-code="110118">密云区</option><option value="延庆区" data-code="110119">延庆区</option></select>
       									   		</div>
   									   </div>
    								
									</div>
									<br>
									<div class="input-group">
										<div class="input-group-addon">详细地址</div>
										<input class="form-control" placeholder="请输入详细地址" type="text" id="dizhi">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">户籍归属</div>
										<input class="form-control" placeholder="请输入户籍归属" type="text" id="huji">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">婚姻情况</div>
										<select class="form-control" id="hunyin">
											<option value="option1">请选择婚姻状况</option>
											<option value="option2">已婚</option>
											<option value="option3">未婚</option>
										</select> 
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group" >
										<div class="input-group-addon" >配偶姓名</div>
										<input class="form-control" placeholder="请输入配偶姓名" type="text" readonly="readonly" id="qw">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">配偶证件号</div>
										<input class="form-control" placeholder="请输入配偶证件号" type="text" readonly="readonly" id="qw2">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon"  id="peiouphoneid">配偶手机号码</div>
										<input class="form-control" placeholder="请输入配偶手机号码" type="text" readonly="readonly" id="qw3">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">子女情况</div>
										<input class="form-control" placeholder="请输入子女情况" type="text" id="zinv">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">住房情况</div>
										<input class="form-control" placeholder="请输入住房情况" type="text" id="zhufang">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">教育情况</div>
										<input class="form-control" placeholder="请输入学历信息" type="text" id="jiaoyu">
									</div>
										<span class="myspan"></span>
									<br>
									<div class="input-group">
										<div class="input-group-addon">家庭电话</div>
										<select class="form-control" style="width:150px">
											<option>区号</option>
											<option value="option1">下拉1</option>
											<option value="option2">省份</option>
											<option value="option3">下拉3</option>
										</select> 
										<input class="form-control" placeholder="电话" type="text" id="dianhua" style="width:288px">
									</div>
									<span class="myspan"></span>
									<br>
									<div class="input-group" class="mycenter">
										<button class="btn btn-primary" type="button" style="text-align:center">提交</button>
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

