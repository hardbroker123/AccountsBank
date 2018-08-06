<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2018/6/12
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getScheme()+"://"
            +request.getServerName()+":"
            +request.getServerPort()
            +request.getContextPath()+"/";
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
    <title>融智达</title>
    <link rel="stylesheet" type="text/css" href="<%=path%>font/Assets/css/reset.css"/>
	 <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="jquery/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
<script>
	$(function(){
		$("#searchBtn").click(function(){
			window.location.href="page-login.jsp";
		});
		$("#clearContent").click(function(){
			window.location.href="page-regist.jsp";
		});
	});
</script>
    </head>
<body>

    <div class="header i_bg_a">
    <div class="head clearfix">
    <div class="logo"><h1><a href="first.jsp"><img src="<%=path%>font/Assets/images/logo.png" alt="极光贷"/></a></h1></div>
    <div class="head_r">
        <c:if test="${sessionScope.userLogin!=null}">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>${sessionScope.userLogin.userName }</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                <ul class="dropdown-menu" style="list-style:none">
                    <li><a href="#"><span>我的额度</span></a></li>
                    <li><a href="<%=path%>jsp/index.jsp"><span>我的信息</span></a></li>
                    <li><a href="userRemove.action"><i class="lnr lnr-exit"></i> <span>退出登陆</span></a></li>
                </ul>
            </li>
        </c:if>
        <c:if test="${sessionScope.userLogin==null}">
                <input type="button" id="searchBtn"  class="btn btn-primary" value="登陆">
				<input type="button" id="clearContent" class="btn btn-primary" value="注册"/>
        </c:if>
    <span></span>
    <span></span>
    </div>
    </div>
    <div class="space_hx">&nbsp;</div>
    <div class="nav_m">
    <div class="n_icon">&nbsp;导航栏</div>
    <ul class="nav clearfix">
    <li class="now"><a href="first.jsp">首页</a></li>
    <li>
    <a href="product.jsp">融资产品</a>
    <ul>
    <li><a href="">信用贷款</a></li>
    <li><a href="">抵押贷款</a></li>
    </ul>
    </li>
    <li><a href="<%=path%>jsp/apply.jsp">申请方式</a></li>
    <li><a href="<%=path%>jsp/case.jsp">成功案例</a></li>
    <li><a href="<%=path%>jsp/sense.jsp">贷款常识</a></li>
    <li><a href="<%=path%>jsp/news.jsp">新闻资讯</a></li>
    <li><a href="<%=path%>jsp/about.jsp">关于我们</a></li>
    <li><a href="<%=path%>jsp/contact.jsp">联系我们</a></li>
    </ul>
    </div>
    </div>




    <script type="text/javascript" src="<%=path%>font/Assets/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="<%=path%>font/Assets/js/js_z.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>font/Assets/plugins/FlexSlider/flexslider.css">
    <script type="text/javascript" src="<%=path%>font/Assets/plugins/FlexSlider/jquery.flexslider.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>font/Assets/css/thems.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>font/Assets/css/responsive.css">
    <script language="javascript">
    $(window).load(function() {
    $('.flexslider').flexslider({
    animation: "slide"
    });
    var i_h=$('.banner .tu img').height();
    $('.f_sq .f_sqm').css({height:i_h+'px',top:-i_h+'px'});

    });
    </script>

</body>
</html>
