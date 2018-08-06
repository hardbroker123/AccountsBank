    <%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8"
        pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <html>
 <%
    String path=request.getScheme()+"://"
            +request.getServerName()+":"
            +request.getServerPort()
            +request.getContextPath()+"/";
%>


<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>贷款申请流程</title>

</head>

<body>
<!--头部-->
        <jsp:include page="header.jsp"></jsp:include>
<!--头部-->
<!--幻灯片-->
<div class="banner banner_s"><img src="../../font/Assets/upload/banner_d.jpg" alt=""/></div>
<!--幻灯片-->
<div class="s_bg">
	<div class="scd">

    <form id="msform" style="margin-left: 50px">
        <!-- progressbar -->
        <section class="process">
            <h3 style="width: 900px;">申请流程</h3>
            <p style="width: 900px;">仅需5步，即可完成贷款申请</paa>
            <div class="container">

                <ul id="progressbar" class="flowline clearfix">
                    <li class="vary process-module process-3" style="position: relative;left: 455px;">
            <span class="icon-block">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="贷款确认" style="background-position: -96px 0"> <br />
            <span class="flow-line"></span>
            </span>
                        <br />
                        <span>贷款确认</span>
                    </li>
                    <li class="process-module process-4" style="position: relative;left: 450px;">
            <span class="icon-block">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="贷款签约" style="background-position: -128px 0"> <br />
            </span>
                        <br />
                        <span>贷款签约</span>
                    </li>
                    <li class="process-module process-0" style="position: relative;right: 370px;">
            <span class="icon-block1">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="授权认证" style="background-position: 0px 0"><br />
            <span class="flow-line"></span>
            </span>
                        <br />
                        <span>授权认证</span>
                    </li>
                    <li class="process-module process-1" style="position: relative;right: 375px;">
            <span class="icon-block1">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="提交申请" style="background-position: -32px 0"> <br />
            <span class="flow-line"></span>
            </span>
                        <br />
                        <span>提交申请</span>
                    </li>
                    <li class="process-module process-2" style="position: relative;right: 380px;">
            <span class="icon-block1">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="贷款审批" style="background-position: -64px 0"> <br />
            <span class="flow-line"></span>
            </span>
                        <br />
                        <span>贷款审批</span>
                    </li>

                </ul>
            </div>
        </section>
                <!-- fieldsets -->


            <fieldset id="form4">
                <h2 class="fs-title">贷款信息确认</h2>
            <div class="EnsureMsg">
                <h1>恭喜您！您申请的贷款审批已通过！</h1>
                <h4>贷款审批如下、请您确认是否使用该笔贷款。</h4>
            </div>
            <div class="applyEnsure" >
                <li><span>申请编号</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.appliNumber}"/></li>
                <li><span>产品名称</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.proName}"/></li>
                <li><span>申请金额</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.appliAmount}"/></li>
                <li><span>利息率/年</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.anIntereRate}"/></li>
                <li><span>额度有效期</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.periodValidity}"/></li>
                <li><span>计息方式</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.interestRate}"/></li>
            </div>

            <div class="applyEnsure" style="margin-left: 20px">
                <li><span>申 请 人</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.personName}"/></li>
                <li><span>产品类型</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.proType}"/></li>
                <li><span>审批金额</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.approAmount}"/></li>
                <li><span>罚息利率/年</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.fineInTerestRate}"/></li>
                <li><span>单笔贷款周期</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.singleLoanCycle}"/></li>
                <li><span>还款方式</span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.loanInfo.repayMethod}"/></li>
            </div>

            <input type="button" name="next" id="next4" class="next action-button" value="Next" />

            </fieldset>

        <fieldset id="form5">
            <h2 class="fs-title">选择签约卡</h2>

            <div class="mainin">

                <li><span>签约卡号</span>
                    <select name="creditCardNumbers" id="creditCardNumbers">
                        <option id="repayCardChoose" value="">— —请选择签约卡— —</option>

                    </select><span class="alert"></span>
                    <span id="cartnumid"></span>
                </li>
                <li>
                    <span>每月还款日期</span><input type="text" class="SearchKeyword" readonly="readonly" name="repaymentDate" id="repaymentDate" value="20" />
                    <span class="alert"></span>
                </li>
            </div>

            <input type="button" name="LoanContract" id="LoanContract"
                   class="submit action-button" value="Submit" />

            <input type="button" name="next" id="previous" class="next action-button previous" value="Back" />

        </fieldset>

    </form>
    </div>
</div>
        <jsp:include page="footer.jsp"></jsp:include>
    <script>
        /*from1*/
    $(function(){
    /*银行卡认证*/
        $("#getMoneyCard").blur(function(){
            var reg=/^[0-9]{16,19}$/;
            if ($("#getMoneyCard").val() == "") {
                $("#getMoneyCard").next("button").next("span").html("请输入银行卡号!").show();
                return;
            }
            if(!reg.test($("#getMoneyCard").val())){
                $("#getMoneyCard").next("button").next("span").html("请输入正确的银行卡号!").show();
                return;
            }else{
                $("#getMoneyCard").next("button").next("span").hide();
                return;
            }
        });

    /*转账金额验证*/
        $("#reAccount").blur(function(){
            var reg=/^[0](\.\d{2})$/;
            if ($("#reAccount").val() == "") {
                $("#reAccount").next("span").html("请输入转账金额!").show();
                return;
            }
            if(!reg.test($("#reAccount").val())){
                $("#reAccount").next("span").html("请输入正确格式!").show();
                return;
            }else{
                $("#reAccount").next("span").hide();
                return;
                }
        });

    /*产品名称验证*/
    $("#proName").blur(function () {
        if ($("#proName").val() == $("#proNameChoose").val()) {
            $("#proName").next("span").html("请选择产品名称").show();
            return;
    } else {
        $("#proName").next("span").hide();
            }
    });
    /*产品类型验证*/
    $("#proType").blur(function () {
        if ($("#proType").val() == $("#proTypeChoose").val()) {
            $("#proType").next("span").html("请选择产品类型").show();
            return;
        } else {
            $("#proType").next("span").hide();
            }
    });
    /*还款方式验证*/
    $("#repayMethod").blur(function () {
        if ($("#repayMethod").val() == $("#repayMethodChoose").val()) {
            $("#repayMethod").next("span").html("请选择还款方式").show();
            return;
        } else {
            $("#repayMethod").next("span").hide();
        }
    });
    /*计息方式验证*/
    $("#rateType").blur(function () {
        if ($("#rateType").val() == $("#rateTypeChoose").val()) {
            $("#rateType").next("span").html("请选择计息方式").show();
            return;
        } else {
            $("#rateType").next("span").hide();
        }
    });




    });


        /*from2*/
    $(function(){
        /*金额验证*/
        $("#appliAmount").blur(function(){
            var reg=/^[0-9]{3}$/;
            if ($("#appliAmount").val() == "") {
                $("#appliAmount").next("span").next("span").html("请输入贷款金额!").show();
                return;
            }
            if(!reg.test($("#appliAmount").val())){
                $("#appliAmount").next("span").next("span").html("请输入一个三位数数字!").show();
                return;
            }else{
                $("#appliAmount").next("span").next("span").hide();
                return;
                }
        });

        /*申请人验证*/
    $("#applicant").blur(function(){
        var reg=/^[\u4e00-\u9fa5]{2,4}$/;
            if ($("#applicant").val() == "") {
                $("#applicant").next("span").html("申请人姓名不能为空!").show();
                return;
            }
            if(!reg.test($("#applicant").val())){
                $("#applicant").next("span").html("姓名为2-4位汉字！").show();
                return;
            }else{
                $("#applicant").next("span").hide();
                return;
                }
        });

        /* 点击下一步查询申请人授权银行卡并存放至select中 */
        $("#next4").click(function(){
            var select = $("#creditCardNumbers");

            $.getJSON("getAllAccountCards.action", function(data){

                $.each(data,function(index,acc){
                    $("<option>").attr("value", acc["account"]).html(acc["account"]).appendTo(select);
                })

            });


        });

        /* 贷款信息确认后点击Submit 插入签约信息 */

        $("#LoanContract").click(function(){
            if($("#creditCardNumbers").val()==""){
                alert("请选择签约银行卡！");
                return false;
            }else{
                var repaymentDate=$("#repaymentDate").val();
                var creditCardNumbers=$("#creditCardNumbers").val();
                window.location.href="insertLoanContractInfo.action?repaymentDate="+repaymentDate+"&creditCardNumbers="+creditCardNumbers;
            }
        });


    })


    </script>
    <link rel="stylesheet" media="screen" href="<%=path%>font/Assets/css/css.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>font/Assets/css/reset.css"/>
    <script src="<%=path%>font/Assets/js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="<%=path%>font/Assets/js/jquery-1.12.4.min.js" type="text/javascript"></script>
    <script src="<%=path%>font/Assets/js/jquery.easing.min.js" type="text/javascript"></script>
    <script src="<%=path%>font/Assets/js/jQuery.time.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="<%=path%>font/Assets/css/thems.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>font/Assets/css/responsive.css">
</body>
</html>
