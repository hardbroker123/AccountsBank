<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>注册页面</title>
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
	<!-- 导入用户协议 -->
	 <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<script src="js/gVerify.js"></script>
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script>
		$(function(){
		/* 验证码 */
		var verifyCode = new GVerify("v_container");

		document.getElementById("code_input").onblur = function(){
			var res = verifyCode.validate(document.getElementById("code_input").value);
			if(!res){
				$("#code_input").next("span").html("验证码不正确");
			}else{
				$("#code_input").next("span").hide();
			}
		}
		/* 表单验证 */
			$("#loginName").blur(function(){
				if($("#loginName").val() == ''){
					$("#loginName").next("span").html("真实姓名不能为空！").show();
					return false;
				}else if(!/^\w{6,12}$/.test($("#loginName").val())){
					$("#loginName").next("span").html("真实姓名为6-12位字母数字下划线").show();
					return false;
				}else{
					$("#loginName").next("span").hide();
				}
					//检查用户名是否重复
				$.ajax({
				url:"queryloginName.action",
				type:"post",
				data:{loginName:$("#loginName").val()},
				async:false,
				dataTypes:"json",
				success:function(obj){
					if(obj==1){
						$("#loginName").next("span").html("名称重复").show();
						return false;
					}else {
					    $("#loginName").next("span").hide();
					}
				}
			   });
			   
			});
			
			$("#userName").blur(function(){
				if($("#userName").val() == ''){
					$("#userName").next("span").html("用户名不能为空！").show();
					return false;
				}else if(!/^\w{6,12}$/.test($("#userName").val())){
					$("#userName").next("span").html("用户名为6-12位字母数字下划线").show();
					return false;
				}else{
					$("#userName").next("span").hide();
				}
					//检查用户名是否重复
				$.ajax({
				url:"user.do?action=checkloginAction&userName="+$("#userName").val(),
				type:"get",
				async:false,
				dataTypes:"json",
				success:function(obj){
					if(obj.name =$("#userName").val()){
					/* alert("请检查账号！"); */
						return false;
					}else{
					    $("#userName").next("span").hide();
					}
				}
			   });
			});
			
			$("#loginPassword").blur(function(){
				if($(this).val() == ''){
					$(this).next("span").html("密码不能为空！").show();
					return false;
				}else if(!/^[0-9a-zA-Z]{6,12}$/.test($("#loginPassword").val())){
					$(this).next("span").html("密码为6-12位字母数字").show();
					return false;
				}else{
					$(this).next("span").hide();
				}
			});
			$("#reloginPassword").blur(function(){
			    if($(this).val() == ''){
					$(this).next("span").html("确认密码不能为空！").show();
					return false;
				}
				else if($("#reloginPassword").val()!=$("#loginPassword").val()){
					$("#reloginPassword").next("span").html("两次密码不一致！").show();
					return false;
				}
				else{
					$("#reloginPassword").next("span").hide();
				}
			});
			
			$("#userCardId").blur(function(){
			 	var reg =/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|[xX])$/;
				if($(this).val() == ''){
					$(this).next("span").html("身份证号不能为空！").show();
					return false;
				}else if(!reg.test($("#userCardId").val())){
					$(this).next("span").html("身份证号格式不正确").show();
					return false;
				}else{
					$(this).next("span").hide();
				}
			});
			$("#userTel").blur(function(){
			 	var reg =/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
				if($(this).val() == ''){
					$(this).next("span").html("手机号不能为空！").show();
					return false;
				}else if(!reg.test($("#userTel").val())){
					$(this).next("span").html("手机号格式不正确").show();
					return false;
				}else{
					$(this).next("span").hide();
				}
			});
			
			/* 表单提交 */
			$("#registForm").submit(function(){
				$("input").trigger("blur");
				if($("#registForm span:visible").size()>1){
					return false;
				}
				
				/*checkbox事件  */
				else if($("#cb1").checked==false||$("#cb2").checked==false){
				alert("789");
					return false;
				}
				else{
					return ture;
				}
				
			});
		});
		
		
	</script>
	<style>
		span{
			color:red;
			height:10px;	
		}
		#registForm div[class="form-group"]{
			style="height:50px";
		}
		
        #v_container{
            width: 100px;
            display: inline;
            margin-top: 10px;
        }
        #code_input{
            width: 80px;
        }
	</style>
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
								<p class="lead">请注册</p>
							</div>
							<form class="form-auth-small" action="userRegist.action" id="registForm">
								<div class="form-group" style="height:50px">
									<label for="loginName" class="control-label sr-only">真实姓名</label>
									<input type="text" class="form-control" id="loginName" name="loginName" value="" placeholder="请输入您的真实姓名">
									<span></span>
								</div>
								<div class="form-group" style="height:50px">
									<label for="userName" class="control-label sr-only">用户名</label>
									<input type="text" class="form-control" id="userName" name="userName" value="" placeholder="请输入您的用户名">
									<span></span>
								</div>
								<div class="form-group" style="height:50px">
									<label for="userCardId" class="control-label sr-only">身份证号</label>
									<input type="text" class="form-control" id="userCardId" name="userCardId" value="" placeholder="请输入您的身份证号">
									<span></span>
								</div>
								<div class="form-group" style="height:50px">
									<label for="loginPassword" class="control-label sr-only">登录密码</label>
									<input type="password" class="form-control" id="loginPassword" name="loginPassword"  value="" placeholder="请输入您的登录密码">
									<span></span>
								</div>
								<div class="form-group" style="height:50px">
									<label for="reloginPassword" class="control-label sr-only">确认密码</label>
									<input type="password" class="form-control" id="reloginPassword"   value="" placeholder="请输入您的确认密码">
									<span></span>
								</div>
								<div class="form-group" style="height:50px">
									<label for="userTel" class="control-label sr-only">手机号</label>
									<input type="text" class="form-control" id="userTel"  name="userTel" value="" placeholder="请输入您的手机号">
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
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">XXX小额贷款公司</h1>
							<p>制作团队</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
	
	<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">民生小微之家用户服务协议</h4>
      </div>
      <div class="modal-body">
      		<textarea rows="25" cols="80">
           1、本人（本单位）保证本申请表正面所述信息、提交予贵行的资料以及相关证明文件正确无误，并同意以此作为日后与贵行签订借款合同及其他相应法律文件的基础。如上述资料或文件失实或虚假，本人（本单位）愿承担由此引起的一切法律责任。
           2、本人（自然人适用）保证本申请表正面所述婚姻状况信息以及配偶资料均真实有效，本人申请本贷款的所有相关事宜本人配偶已经完全知晓并同意以夫妻共同财产予以偿还直至贷款结清。如所述虚假，本人愿承担由此引起的一切法律责任。
            3、为审批、办理申请业务、及申请业务叙作期间监控本人及其配偶（如有）信用和经营变化，自本人（本单位）向贵行提交本申请之日起，至申请人结清申请业务及申请业务到期之日止，本人（本单位）及其配偶（如有）不可撤销的授权贵行：
            （1）向中国人民银行个人或企业信用信息基础数据库（以下简称“人行数据库”）查询及使用本人（本单位）及其配偶（如有）个人或企业信息，包括基本信息和信用报告；
            （2）将本人（本单位）基本信息和信用记录发送给人行数据库。
            为了贵行能够履行上述受权事宜，本人（本单位）及其配偶（如有）同意向贵行指定经办人员提交有效身份证件、资信证明文件的原件及复印件。未经本人（本单位）及其配偶（如有）同意，贵行不得将前述证件用于其他用途。超出本款授权范围的操作，后果由贵行承担。
            本人（本单位）及其配偶（如有）承诺已充分知悉并理解本款授权的内容。
            4、 经贵行审查审批未能给予贷款的，本人（本单位）无异议；取得贵行贷款的，本人（本单位）保证按时足额偿还贷款本息。本人（本企业）承诺，严格依相关合同约定的用途使用额度下借款，不用于股本权益性投资以及炒卖股票、期货等高风险性投资和经营，否则，一切责任均由本人（本企业）自行承担。
            5、本人（等）申请开通贵行提供的自助渠道（包括但不限于自助存取款机、网上银行、自助查询终端），用于自行办理额度项下单笔借款的发放、还本付息和查询等手续，本人（等）承诺遵守 “民生借记卡章程”、“民生借记卡申办使用规定”、“中国民生银行网上银行个人客户服务协议”及其他自助渠道的申请、使用协议，如有伪造、欺诈或者违反上述任一协议的内容，承担相应法律责任。
            6、本单位承诺对申请人向贵行申请并获批的授信承担连带担保责任，并签署相应合同。
            </textarea>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal">同意协议</button>
      </div>
    </div>
  </div>
</div>


</body>
</html>
