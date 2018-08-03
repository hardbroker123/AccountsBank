<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >

<head>
	<title>联系人信息</title>
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
	 <!-- <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <style>
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
								<li><a href="#"><i class="lnr lnr-exit"></i> <span></span></a></li>
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
						<li><a href="elements.jsp" class=""><i class="lnr lnr-code"></i> <span>个人信息</span></a></li>
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
						<li><a href="panels.jsp" class="active"><i class="lnr lnr-cog"></i> <span>联系人信息</span></a></li>
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
						<div class="panel panel-primary" >
							<div class="panel-heading" style="background-color:#2b333e;">
								<h3 class="panel-title">查询条件</h3>
							</div>
							<div class="panel-body" style="border:1px solid #2b333e">
								<div class="form-horizontal" role="form">
								<form id="myformSearch">
										<div class="form-group">
										<label for="contactNameSearch" class="col-sm-1 control-label">联系人姓名</label>
										<div class="col-sm-2" style="margin-top:5px;">
											<input type="text" class="form-control" id="contactNameSearch" name="contactName" placeholder="请输入联系人姓名">
										</div>
										
										
										<label for="contactPersonCardIdSearch" class="col-sm-1 control-label">联系人身份证</label>
										<div class="col-sm-2" style="margin-top:5px;">
											<input type="text" class="form-control" id="contactPersonCardIdSearch" name="contactPersonCardId" placeholder="请输入联系人身份证">
										</div>
										
										<label for="contactPhoneSearch" class="col-sm-1 control-label">联系人电话</label>
										<div class="col-sm-2" style="margin-top:5px;">
											<input type="text" class="form-control" id="contactPhoneSearch" name="contactPhone" placeholder="请输入联系人电话">
										</div>
                            <!-- 
										<button id="searchBtn" type="submit" class="col-sm-offset-1 btn btn-primary" style="width:80px;margin-top:5px;">
											<i class="glyphicon glyphicon-search"></i>查询
										</button> -->
										<input type="button" id="searchBtn"  class="btn btn-primary" value="查询">
										<input type="button" id="clearContent" class="btn btn-info" value="清空搜索项"/>
									</div>
								</form>
								</div>
							</div>
					</div>
				</div>
			</div>

			<div class="container-fluid">
				<div class="row" style="margin-bottom:15px;">
					<div class="col-sm-4">
						<button id="addBtn" class="btn btn-info" style="width:200px;">
							<i class="glyphicon glyphicon-plus"></i>添加联系人
						</button>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<table class="table table-bordered table-striped table-hover">
							<thead>
							<tr>
								<th>编号</th>
								<th>与本人关系</th>
								<th>联系人姓名</th>
								<th>身份证号</th>
								<th>联系电话</th>
								<th>操作</th>
							</tr>
							</thead>
							<tbody id="tablecontent">
							</tbody>
					</div>
				</div>
			</div>
			<div class="modal fade" id="addDialog" tabindex="-1" role="dialog" 
				aria-labelledby="addDialogLabel" aria-hidden="true" data-backdrop="static">
				<div class="modal-dialog" style="width:500px;">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title text-primary" id="addDialogLabel">
								添加联系人信息
							</h4>
						</div>
						<form id="myform">
						<div class="modal-body">
							<div class="row" style="margin:10px;">
								<div class="form-group">
									<label for="relationshipAdd" class="col-sm-3 control-label">与本人关系</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="relationshipAdd" name="relationship" placeholder="请输入与本人关系">
									</div>
								</div>
							</div>
							<div class="row col-sm-12" style="margin:10px;">
								<span class="myspan"></span>
							</div>
							<div class="row" style="margin:10px;">
								<div class="form-group">
									<label for="contactNameAdd" class="col-sm-3 control-label">联系人姓名</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="contactNameAdd" name="contactName" placeholder="请输入联系人姓名">
									</div>
								</div>
							</div>
							<div class="row" style="margin:10px;">
								<span class="myspan"></span>
							</div>
							<div class="row" style="margin:10px;">
								<div class="form-group">
									<label for="contactPersonCardIdAdd" class="col-sm-3 control-label">身份证号</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="contactPersonCardIdAdd" name="contactPersonCardId" placeholder="请输入身份证号">
									</div>
								</div>
							</div>
							<div class="row" style="margin:10px;">
								<span class="myspan"></span>
							</div>
							<div class="row" style="margin:10px;">
								<div class="form-group">
									<label for="contactPhoneAdd" class="col-sm-3 control-label">联系电话</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="contactPhoneAdd"  name="contactPhone" placeholder="请输入联系电话">
									</div>
								</div>
							</div>
						<div class="row" style="margin:10px;">
								<span class="myspan"></span>
						</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">
								取消
							</button>
							<button id="addConfirmBtn" type="submit" class="btn btn-primary">
								确定
							</button>
						</div>
							</form>
					</div><!-- /.modal-content -->
				</div><!-- /.modal dialog-->
			</div>
			<div class="modal fade" id="editDialog" tabindex="-1" role="dialog"
				 aria-labelledby="editDialogLabel" aria-hidden="true" data-backdrop="static">
				<div class="modal-dialog" style="width:500px;">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title text-primary" id="editDialogLabel">
								修改联系人
							</h4>
						</div>
						<form id="myformEdit">
						<div class="modal-body">
							<input type="hidden" id="idEdit" value="" name="contactId">
							<div class="row" style="margin:10px;">
								<div class="form-group">
									<label for="relationshipEdit" class="col-sm-4 control-label">与本人关系</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="relationshipEdit" name="relationship" placeholder="请输入与本人关系">
									</div>
								</div>
							</div>
							<div class="row" style="margin:10px;">
								<div class="form-group">
									<label for="contactNameEdit" class="col-sm-4 control-label">联系人姓名</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="contactNameEdit" name="contactName" placeholder="请输入联系人姓名">
									</div>
								</div>
							</div>
							<div class="row" style="margin:10px;">
								<div class="form-group">
									<label for="contactPersonCardIdEdit" class="col-sm-4 control-label">身份证号</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="contactPersonCardIdEdit" name="contactPersonCardId" placeholder="请输入身份证号">
									</div>
								</div>
							</div>
							<div class="row" style="margin:10px;">
								<div class="form-group">
									<label for="contactPhoneEdit" class="col-sm-4 control-label">联系电话</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" id="contactPhoneEdit" name="contactPhone" placeholder="请输入最大经度">
									</div>
								</div>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">
								取消
							</button>
							<button id="editConfirmBtn" type="submit" class="btn btn-primary">
								确定
							</button>
						</div>
						</div>
						</div>
						</from>
					</div><!-- /.modal-content -->
					</table>
					</div>
				</div><!-- /.modal dialog-->
			</div>

			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
	</div>
	<!-- END WRAPPER -->
	<script type="text/javascript">
		function initialTableData() {
			$.getJSON("getContactSearch.action", function(data){
				$('#tablecontent').empty();
				for(i=0;i<data.length;i++) {
					$('#tablecontent').append('<tr>'
							+'<td>'+data[i].contactId+'</td>'+'<td>'+data[i].relationship+'</td>'+'<td>'+data[i].contactName+'</td>'+'<td>'+data[i].contactPersonCardId+'</td>'+'<td>'+data[i].contactPhone+'</td>'
							+'<td><a href="javascript:void(0)" onclick="editContactInfo(\''+data[i].contactId+'\')">修改</a>'
							+'&nbsp;&nbsp;&nbsp;&nbsp;'
							+'<a href="javascript:void(0)" onclick="deleteContactInfo(\''+data[i].contactId+'\')">删除</a></td>'
							+'</tr>');
				}
			});
		}
		function editContactInfo(contactId) {
			$.getJSON("getContactJsonById.action", {contactId: contactId}, function(data){
				$('#idEdit').val(data.contactId);
				$('#relationshipEdit').val(data.relationship);
				$('#contactPersonCardIdEdit').val(data.contactPersonCardId);
				$('#contactPhoneEdit').val(data.contactPhone);
				$('#contactNameEdit').val(data.contactName);
				
				$('#editDialog').modal('show');
			});
		}
		function deleteContactInfo(contactId) {
			if(confirm('确认删除当前信息吗？')) {
				$.post("deleteContactJson.action", {contactId: contactId}, function(data, status) {
					if(data=='success') {
						alert('删除成功!');
						initialTableData();
					}
				});
			}
		}
		
		$(function() {
			/* 清空数据 */
			
			$("#clearContent").click(function(){
				 $('#contactNameSearch').val('');
				 $('#contactPhoneSearch').val('');
				$('#contactPersonCardIdSearch').val('');
			});
			
			
			initialTableData();
			$('#addBtn').click(function(){
				$('#relationshipAdd').val('');
				$('#contactNameAdd').val('');
				$('#contactPersonCardIdAdd').val('');
				$('#contactPhoneAdd').val('');

				$('#addDialog').modal('show');
			});
			/* 
			/* 增加表单验证 */
			
			$("#relationshipAdd").blur(function(){
				if($("#relationshipAdd").val() == "") {
					$('#relationshipAdd').parent().parent().parent().next().children().html("与本人关系不能为空!").show();
					return false;
				}else if(!/^[\u4E00-\u9FA5\uf900-\ufa2d·s]{2,20}$/.test($('#relationshipAdd').val())){
					$('#relationshipAdd').parent().parent().parent().next().children().html("关系不合法!").show();
					return false;
				}else{
					$('#relationshipAdd').parent().parent().parent().next().children().hide();
				}
			});
			$("#contactNameAdd").blur(function(){
				if($("#contactNameAdd").val() == "") {
					$('#contactNameAdd').parent().parent().parent().next().children().html("联系人不能为空!").show();
					return false;
				}else if(!/^[\u4E00-\u9FA5\uf900-\ufa2d·s]{2,20}$/.test($('#contactNameAdd').val())){
					$('#contactNameAdd').parent().parent().parent().next().children().html("姓名不合法!").show();
					return false;
				}else{
					$('#contactNameAdd').parent().parent().parent().next().children().hide();
				}
			});
			$("#contactPersonCardIdAdd").blur(function(){
				if($("#contactPersonCardIdAdd").val() == "") {
					$('#contactPersonCardIdAdd').parent().parent().parent().next().children().html("身份证不能为空!").show();
					return false;
				}else if(!/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|[xX])$/.test($('#contactPersonCardIdAdd').val())){
					$('#contactPersonCardIdAdd').parent().parent().parent().next().children().html("身份证不合法!").show();
					return false;
				}else{
					$('#contactPersonCardIdAdd').parent().parent().parent().next().children().hide();
				}
			});
			$("#contactPhoneAdd").blur(function(){
				if($("#contactPhoneAdd").val() == "") {
					$('#contactPhoneAdd').parent().parent().parent().next().children().html("电话号不能为空!").show();
					return false;
				}else if(!/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/.test($('#contactPhoneAdd').val())){
					$('#contactPhoneAdd').parent().parent().parent().next().children().html("电话号不合法!").show();
					return false;
				}else{
					$('#contactPhoneAdd').parent().parent().parent().next().children().hide();
				}
			});
			
			$("#myform").submit(function(){
				$("input").trigger("blur");
				if($("#myform span:visible").size()>0){
					return false;
				}
			}); 
			
			$('#addConfirmBtn').click(function(){
					/* 表单提交 */
				$.post("addContactInfo.action",$("#myform").serialize(),function(data, status){
							if(data=="success") {
								alert('添加成功!');
								$('#addDialog').modal('hide');
								initialTableData();
								}
							}
						);
				});
			$('#editConfirmBtn').click(function(){
				var relationship = $('#relationshipEdit').val();
				var contactName = $('#contactNameEdit').val();
				var contactPhone = $('#contactPhoneEdit').val();
				var contactPersonCardId = $('#contactPersonCardIdEdit').val();


				if(relationship=='') {
					alert('关系不能为空!');
					$('#relationshipEdit').focus();
					return false;
				}
				if(contactName=='') {
					alert('电话不能为空!');
					$('#contactNameEdit').focus();
					return false;
				}
				if(contactPhone=='') {
					alert('电话不能为空!');
					$('#contactPhoneEdit').focus();
					return false;
				}
				if(contactPersonCardId=='') {
					alert('电话号不能为空!');
					$('#contactPersonCardIdEdit').focus();
					return false;
				}

				$.post("updateContactJson.action",$("#myformEdit").serialize(),function(data, status){
							if(data=='success') {
								alert('修改成功!');
								$('#editDialog').modal('hide');
								initialTableData();
							}
						}
				);
			});
			
			$("#searchBtn").click(function(){
				$.getJSON("getContactSearch.action",$("#myformSearch").serialize(), function(data){
					$('#tablecontent').empty();
					for(i=0;i<data.length;i++) {
					$('#tablecontent').append('<tr>'
							+'<td>'+data[i].contactId+'</td>'+'<td>'+data[i].relationship+'</td>'+'<td>'+data[i].contactName+'</td>'+'<td>'+data[i].contactPersonCardId+'</td>'+'<td>'+data[i].contactPhone+'</td>'
							+'<td><a  onclick="editContactInfo(\''+data[i].contactId+'\')">修改</a>'
							+'&nbsp;&nbsp;&nbsp;&nbsp;'
							+'<a  onclick="deleteContactInfo(\''+data[i].contactId+'\')">删除</a></td>'
							+'</tr>');
					}
				});
			});
		});
	</script>
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
</body>

</html>

