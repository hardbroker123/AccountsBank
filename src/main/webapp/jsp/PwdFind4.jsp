<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Author" >
<title>忘记密码</title>
<link rel="shortcut icon" href="images/favicon.ico" />
<link type="text/css" href="css/css.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.8.3-min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
<script>
	$(function(){
		$("#update").click(function(){
		/*location.href="userPwdUpdate.action?loginPassword="+$("#newPass").val()+"&userRegId="+${sessionScope.userLogin.userRegId};  */
				 $.ajax({
					url:"userPwdUpdate.action",
					cache:false,
					type:"post",
					data:{loginPassword:$("#newPass").val(),userRegId:${sessionScope.userLogin.userRegId}}, 
					dataType:"json", 
					async:false,
					success:function(data,status){
					},
					error:function(){
						alert("失败");
					}
				}); 
					
		});
	});
</script>
</head>

<body>

  <div class="content">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext for-cur"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext for-cur"><em>4</em><br /><strong>完成</strong></div>
      </div>
     </div><!--for-liucheng/-->
      <div class="successs">
       <h3>恭喜您，修改成功！</h3>
      </div>
     
      	<button type="submit" id="update" > 返回首页</button>
     
   </div><!--web-width/-->
  </div><!--content/-->
 
</body>
</html>

