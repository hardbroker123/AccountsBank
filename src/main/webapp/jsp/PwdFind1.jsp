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
    <script >
        $(function(){
            /* 验证码 */
           /*  var verifyCode = new GVerify("v_container");

            document.getElementById("code_input").blur = function(){
                var res = verifyCode.validate(document.getElementById("code_input").value);
                if(!res){
                    document.getElementById("code_input").next("span").html("验证码不正确");
                }else{
                    document.getElementById("code_input").next("span").hide();
                }
            } */
			
			$("#userName").blur(function(){
				if($("#userName").val() == ''){
					$("#userName").next("span").html("用户名不能为空！").show();
					return false;
				}else if(!/^\w{6,12}$/.test($("#userName").val())){
					$("#userName").next("span").html("6-12位字母数字下划线").show();
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
            $("#phoneNum").blur(function(){
                var reg =/^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
                if($(this).val() == ''){
                    $(this).next("span").html("手机号不能为空！").show();
                    return false;
                }else if(!reg.test($("#phoneNum").val())){
                    $(this).next("span").html("手机号格式不正确").show();
                    return false;
                }else{
                    $(this).next("span").hide();
                }
            });

            /* 表单提交 */
            $("#checkform").submit(function(){
                $("input").trigger("blur");
                if($("#checkform span:visible").size()>0){
                    return false;
                }
            });

        });
    </script>
    <style type="text/css">
        #v_container{
            width: 100px;
            display: inline;
            margin-top: 10px;
        }
        #code_input{
            width: 80px;
        }
        span{
        color:red;
        }

    </style>
</head>

<body>
 
  <div class="content">
   <div class="web-width">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist"></div>
      <div class="liulist"></div>
      <div class="liulist"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户信息</strong></div>
       <div class="liutext"><em>2</em><br /><strong>身份验证</strong></div>
       <div class="liutext"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext"><em>4</em><br /><strong>完成</strong></div>
      </div>
     </div><!--for-liucheng/-->
     <form action="PwdFind2.jsp" method="get" class="forget-pwd" id="checkform">
       <dl>
        <dt>账户名：</dt>
        <dd><input type="text" id="userName" name="userName"/><span></span></dd>
        <div class="clears"></div>
       </dl>

         <dl>
             <dt>身份证：</dt>
             <dd><input type="text" id="userCardId" name="userCardId"/><span></span></dd>
             <div class="clears"></div>
         </dl>
         <dl>
             <dt>手机：</dt>
             <dd><input type="text" id="phoneNum" name="phoneNum" /><span></span></dd>
             <div class="clears"></div>
         </dl>
       <!-- <dl>
        <dt>验证码：</dt>
           <dd>
               <input type="text" id="code_input" value="" />
               <span></span>
               <div id="v_container" ></div>
           </dd>
           <div class="clears"></div>
       </dl> -->
       
       <div class="subtijiao"><input type="submit" class="btn btn-primary" value="下一步" ></div>
      </form><!--forget-pwd/-->

   </div><!--web-width/-->
  </div><!--content/-->

</body>
</html>

