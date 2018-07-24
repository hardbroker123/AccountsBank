<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回密码</title>
<link type="text/css" href="css/css.css" rel="stylesheet" />
    <script src="js/gVerify.js"></script>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.8.3-min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
   <script>
   $(function(){
   			var newPass= $("#newPass").val();
			var againPass= $("#againPass").val();
			var userTel= $("#userTel").val();
			
			
			$("#newPass").blur(function(){
				if($(this).val() == ''){
					$(this).next("span").html("密码不能为空！").show();
					return false;
				}else if(!/^[0-9a-zA-Z]{6,12}$/.test($("#newPass").val())){
					$(this).next("span").html("密码为6-12位字母数字").show();
					return false;
				}else{
					$(this).next("span").hide();
				}
			});
			
			$("#againPass").blur(function(){
			    if($(this).val() == ''){
					$(this).next("span").html("确认密码不能为空！").show();
					return false;
				}
				else if($("#againPass").val()!=$("#newPass").val()){
					$("#againPass").next("span").html("两次密码不一致！").show();
					return false;
				}
				else{
					$("#againPass").next("span").hide();
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
				
				
				/* 手机号验证数据库是否正确 */
					//0表示 没有查到手机号从数据库中
				$.post("queryUserTel.action",{userTel:$("#userTel").val()},
					function(data, status){
        				if(data == 0){
							$("#userTel").next("span").html("手机号不正确!").show();
							return false;
						}else{
							$("#userTel").next("span").hide();
						}
        			}
        		);
			/* 	$.ajax({
					url:"queryUserTel.action",
					cache:false,
					type:"post",
					data:{userTel:$("#userTel").val()}, 
					dataType:"json", 
					async:false,
					success:function(data,status){
						if(data==0){
							$("#userTel").next("span").html("手机号不正确!").show();
							return false;
						}else{
							$("#userTel").next("span").hide();
						}
					},
					error:function(){
						alert("验证失败");
					}
				}); */
				
			});
			
			/* 表单提交 */
			$("#myform").submit(function(){
				$("input").trigger("blur");
				if($("#myform span:visible").size()>0){
					return false;
				}
			});
   
   });
   </script>
   <style>
		#spanstyle{
			color:red;
			height:10px;	
		}
	</style>
</head>

<body>

  <div class="content">
   <div class="web-width">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext for-cur"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext"><em>4</em><br /><strong>完成</strong></div>
      </div>
     </div><!--for-liucheng/-->
     <form  action="PwdFind4.jsp" class="forget-pwd" id="myform">
       <dl>
        <dt>手机号：</dt>
        <dd><input type="text" id="userTel" name="userTel" /><span id="spanstyle"></span></dd>
        <div class="clears"></div>
       </dl> 
       <dl>
        <dt>新密码：</dt>
        <dd><input type="password" id="newPass" name="newPass" /><span id="spanstyle"></span></dd>
        <div class="clears"></div>
       </dl> 
       <dl>
        <dt>确认密码：</dt>
        <dd><input type="password" id="againPass" name="againPass" /><span id="spanstyle"></span></dd>
        <div class="clears"></div>
       </dl> 
       <div class="subtijiao"><input type="submit" value="提交" class="btn btn-primary"  /></div> 
      </form><!--forget-pwd/-->
   </div><!--web-width/-->
  </div><!--content/-->
  
</body>
</html>

