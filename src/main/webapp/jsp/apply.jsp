<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
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
        <jsp:useBean id="now" class="java.util.Date" scope="page"></jsp:useBean>

<!--头部-->
<!--幻灯片-->
<div class="banner banner_s"><img src="<%=path%>font/Assets/upload/banner_d.jpg" alt=""/></div>
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
            <li class="vary process-module process-0">
            <span class="icon-block">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="授权认证" style="background-position: 0px 0"><br />
            <span class="flow-line"></span>
            </span>
            <br />
            <span>授权认证</span>
            </li>
            <li class="process-module process-1">
            <span class="icon-block">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="提交申请" style="background-position: -32px 0"> <br />
            <span class="flow-line"></span>
            </span>
            <br />
            <span>提交申请</span>
            </li>
            <li class="process-module process-2">
            <span class="icon-block">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="贷款审批" style="background-position: -64px 0"> <br />
            <span class="flow-line"></span>
            </span>
            <br />
            <span>贷款审批</span>
            </li>
            <li class="process-module process-3">
            <span class="icon-block">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="贷款确认" style="background-position: -96px 0"> <br />
            <span class="flow-line"></span>
            </span>
            <br />
            <span>贷款确认</span>
            </li>
            <li class="process-module process-4">
            <span class="icon-block">
            <img src="<%=path%>font/Assets/images/blank.gif" alt="贷款签约" style="background-position: -128px 0"> <br />
            </span>
            <br />
            <span>贷款签约</span>
            </li>
            </ul>
            </div>
            </section>
                <!-- fieldsets -->
            <fieldset id="form1" style="width: 90%">
                <h2 class="fs-title">填写银行卡信息</h2>
                <div class="mainin">
                    <li><span>银行卡号</span><input class="SearchKeyword" type="text" name="getMoneyCard" id="getMoneyCard" placeholder="输入要授权的银行卡号" />
                    <button type="button" id="but1" class="btn btn-default" >认证</button><span class="alert"></span></li>
                </div>
                <div class="mainin">
                    <h2 class="fs-title">授权与认证</h2>
                <textarea readonly="readonly" rows="20" cols="50">
            客户声明及授权书
            1、本人（本单位）保证本申请表正面所述信息、提交予贵行的资料以及相关证明文件正确无误，并同意以此作为日后与贵行签订借款合同及其他相应法律文件的基础。如上述资料或文件失实或虚假，本人（本单位）愿承担由此引起的一切法律责任。
            2、本人（自然人适用）保证本申请表正面所述婚姻状况信息以及配偶资料均真实有效，本人申请本贷款的所有相关事宜本人配偶已经完全知晓并同意以夫妻共同财产予以偿还直至贷款结清。如所述虚假，本人愿承担由此引起的一切法律责任。
            3、为审批、办理申请业务、及申请业务叙作期间监控本人及其配偶（如有）信用和经营变化，自本人（本单位）向贵行提交本申请之日起，至申请人结清申请业务及申请业务到期之日止，本人（本单位）及其配偶（如有）不可撤销的授权贵行：
            （1）向中国人民银行个人或企业信用信息基础数据库（以下简称“人行数据库”）查询及使用本人（本单位）及其配偶（如有）个人或企业信息，包括基本信息和信用报告；（2）将本人（本单位）基本信息和信用记录发送给人行数据库。
            为了贵行能够履行上述受权事宜，本人（本单位）及其配偶（如有）同意向贵行指定经办人员提交有效身份证件、资信证明文件的原件及复印件。未经本人（本单位）及其配偶（如有）同意，贵行不得将前述证件用于其他用途。
            超出本款授权范围的操作，后果由贵行承担。
            本人（本单位）及其配偶（如有）承诺已充分知悉并理解本款授权的内容。
            4、 经贵行审查审批未能给予贷款的，本人（本单位）无异议；取得贵行贷款的，本人（本单位）保证按时足额偿还贷款本息。本人（本企业）承诺，严格依相关合同约定的用途使用额度下借款，不用于股本权益性投资以及炒卖股票、期货等高风险性投资和经营，否则，一切责任均由本人（本企业）自行承担。
            5、本人（等）申请开通贵行提供的自助渠道（包括但不限于自助存取款机、网上银行、自助查询终端），用于自行办理额度项下单笔借款的发放、还本付息和查询等手续，本人（等）承诺遵守 “民生借记卡章程”、“民生借记卡申办使用规定”、“中国民生银行网上银行个人客户服务协议”及其他自助渠道的申请、使用协议，如有伪造、欺诈或者违反上述任一协议的内容，承担相应法律责任。
            6、本单位承诺对申请人向贵行申请并获批的授信承担连带担保责任，并签署相应合同。
                </textarea>
                <li><input type="checkbox" id="agreement"/><span style="margin-left: 10px">我接受客户通知及协议</span><span class="alert"></span></li>
                <li><span>转账金额</span><input type="text" name="reAccount" id="reAccount" class="SearchKeyword" placeholder="输入收到的转账金额，例：0.10"/><span class="alert"></span></li>
            </div>

            <input type="button" name="next" id="next1" class="next action-button" value="Next"/>
            </fieldset>
            <fieldset id="form2">
            <h2 class="fs-title">填写申请信息</h2>
                <div class="mainin">
                    <li><span>申 请 人</span><input class="SearchKeyword" type="text" name="applicant" id="applicant" readonly="readonly" value="老王"/></li>
                    <li><span> 申贷金额</span><input class="SearchKeyword" type="text" name="appliAmount" id="appliAmount" placeholder="申请额度10-99万" /><span>万</span><span class="alert"></span></li>
                    <li><span>产品名称</span>
                    <select id="proName" name="proName">
                        <option id="proNameChoose" value="— —请选择产品名称— —">— —请选择产品名称— —</option>
                        <option id="aurola" value="Aurola极光贷">Aurola极光贷</option>
                    </select><span class="alert"></span></li>

                    <li><span>产品类型</span>
                     <select id="proType" name="proType">
                         <option id="proTypeChoose" value="— —请选择产品类型— —">— —请选择产品类型— —</option>
                         <option id="creditLoan" value="信用贷款">信用贷款</option>
                         <option id="mortgageLoan" value="抵押贷款">抵押贷款</option>
                    </select><span class="alert"></span></li>

                    <li><span>还款方式</span>
                    <select id="repayMethod" name="repayMethod">
                         <option id="repayMethodChoose" value="— —请选择还款方式— —">— —请选择还款方式— —</option>
                         <option id="auto" value="自动扣款">自动扣款</option>
                    </select><span class="alert"></span></li>

                    <li><span>计息方式</span>
                    <select id="interestRate" name="interestRate">
                         <option id="rateTypeChoose" value="— —请选择计息方式— —">— —请选择计息方式— —</option>
                         <option id="simple" value="单利计息">单利计息</option>
                         <option id="rate" value="费率计息">费率计息</option>
                    </select><span class="alert"></span></li>

                    <li><span>利 息 率</span><input class="SearchKeyword" type="next" readonly="readonly" name="anIntereRate" id="anIntereRate" value="0.12"/>（年）</li>
                    <li><span>罚息利率</span><input class="SearchKeyword" type="next" readonly="readonly" name="fineInTerestRate" id="fineInTerestRate" value="0.35"/></li>
                </div>
            <input type="button" style="right: 10px" name="next" id="next2" class="next action-button"  value="Next" />

            </fieldset>



            <fieldset id="form3">
            <div class="EnsureMsg">
                <h1>恭喜您成功提交申请！</h1>
                <h1>您的贷款正在审批中，预计审批过程需要5分钟。</h1>
                <h4>申请结果产生后，我行将通过短信告知您，您可以前往用户中心或贷款管理查询审核结果</h4>
                <input id="hid" type="hidden" value=""/>
            </div>
            <div class="applyEnsure">
                <li><span>申 请 人 </span><input class="SearchKeyword" id="applicant1" type="text" readonly="readonly" value="${sessionScope.PerInfo.personName}"></li>
                <li><span>申请时间</span><input id="applyDate" class="SearchKeyword" type="text" readonly="readonly"
                        <fmt:formatDate type="both" value="${now}" var="result" pattern="yyyy-MM-dd hh:mm:ss"/>
                        <c:set var="applyDate" scope="session" value="${result}"/>value="<c:out value='${applyDate}'/>"/></li>

                <li><span>产品名称</span><input class="SearchKeyword" id="proName1" type="text" readonly="readonly" value=""/></li>
                <li><span>还款方式</span><input class="SearchKeyword" id="repayMethod1" type="text" readonly="readonly" value=""/></li>
            </div>

            <div class="applyEnsure" style="margin-left:20px;">
                <li><span>身 份 证 </span><input class="SearchKeyword" type="text" readonly="readonly" value="${sessionScope.PerInfo.personCardId}"/></li>
                <li><span>申请金额</span><input class="SearchKeyword" id="appliAmount1"  type="text" readonly="readonly" value=""/></li>
                <li><span>产品类型</span><input class="SearchKeyword" id="proType1" type="text" readonly="readonly" value=""/></li>
                <li><span>计息方式</span><input class="SearchKeyword" id="interestRate1" type="text" readonly="readonly" value=""/></li>
            </div>

            <input type="button" name="next" id="next3" class="next action-button" value="返回用户中心" />

            </fieldset>

    </div>
</div>
        <jsp:include page="footer.jsp"></jsp:include>
    <script>
        var current_fs, next_fs, previous_fs;
        var left, opacity, scale;
        var animating;



        /*from1*/
        /*正则表达式*/
    $(function(){
        /*银行卡认证*/
        $("#getMoneyCard").blur(function(){
            var userRegId= ${sessionScope.userLogin.userRegId};
            var reg=/^[0-9]{15,19}$/;
            if ($("#getMoneyCard").val() == "") {
                $("#getMoneyCard").next("button").next("span").html("请输入银行卡号!").show();
                return;
            }
            if(!reg.test($("#getMoneyCard").val())){
                $("#getMoneyCard").next("button").next("span").html("请输入正确的银行卡号!").show();
                return;
            }else{
                $("#getMoneyCard").next("button").next("span").hide();
                $("#but1").unbind("click").bind("click",function () {
                    /*location.href="insertOrUpdateOneUserAuthInfo.action?account="+$("#getMoneyCard").val()+"&personId="+10;*/
                    $.ajax({
                        url:"insertOrUpdateOneUserAuthInfo.action",
                        cache:false,
                        /*async:false,*/
                        xhrFields: {
                            withCredentials: true
                        },
                        type:"post",
                        dataType:"json",
                        data:{account:$("#getMoneyCard").val(),userRegId:userRegId},
                        success:function(transMoney){
                            alert("转账信息发送成功！");
                                return;
                        },
                        error:function(){
                            alert("认证失败！");
                            return;
                        }
                    });


                });
            }
        });

    /*转账金额验证*/
        $("#reAccount").blur(function(){
            var reg=/^[0](\.\d{2})$/;
            if ($("#reAccount").val() == "") {
                $("#reAccount").next("span").html("请输入转账金额!").show();
                return;
            }
            else if(!reg.test($("#reAccount").val())){
                $("#reAccount").next("span").html("请输入正确格式!").show();
                return;
            }else{
                $.ajax({
                    url:"checkReAccountByCard.action",
                    cache:false,
                    async:false,
                    type:"post",
                    dataType:"json",
                    data:{account:$("#getMoneyCard").val(),reAccount:$("#reAccount").val()},
                    success:function(num){
                        if($("#reAccount").val()!=num){
                            $("#reAccount").next("span").html("转账金额不正确!").show();
                            return;
                        }
                        else{
                            $("#reAccount").next("span").hide();
                        }
                    }
                });
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
    $("#interestRate").blur(function () {
        if ($("#interestRate").val() == $("#rateTypeChoose").val()) {
            $("#interestRate").next("span").html("请选择计息方式").show();
            return;
        } else {
            $("#interestRate").next("span").hide();
        }
    });




    });
        /*表单提交*/
    $("#next1").unbind("click").bind("click",function () {
             var userRegId= ${sessionScope.userLogin.userRegId};
            /*next进行认证*/
            $("#form1").find("input").trigger("blur");
            $("#form1").find("select").trigger("blur");
            if($("#agreement").is(':checked')==false){
                $("#agreement").next("span").next("span").html("请同意客户声明及授权书").show();
                $("#agreement").click(function () {
                    $("#agreement").next("span").next("span").hide();
                });
                return;
            }else{
                $("#agreement").next("span").next("span").hide();

            }


            if ($(".alert:visible").size() > 0) {
                return false;
            }else {
                $.ajax({
                    url:"CheckPersonAndCompanyInfo.action",
                    cache:false,
                    /*async:false,*/
                    type:"post",
                    dataType:"json",
                    data:{account:$("#getMoneyCard").val(),userRegId:userRegId},
                    success:function(num){
                        if (num==1){
                            return;
                        } else {
                            alert("请先完善用户信息！");
                            location.href="<%=path%>jsp/index.jsp";
                            /*location.href="insertOrUpdateOneUserAuthInfo.action?account="+$("#getMoneyCard").val()+"&personId="+10;*/
                            return;
                        }
                        return;
                    },
                    error:function(){
                        alert("认证失败！");
                        return;
                    }
                });
                if(animating) return false;
                animating = true;

                current_fs = $(this).parent();
                next_fs = $(this).parent().next();

                $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("vary");


                next_fs.show();

                current_fs.animate({opacity: 0}, {
                    step: function(now, mx) {

                        scale = 1 - (1 - now) * 0.2;

                        left = (now * 50)+"%";

                        opacity = 1 - now;
                        current_fs.css({'transform': 'scale('+scale+')'});
                        next_fs.css({'left': left, 'opacity': opacity});
                    },
                    duration: 800,
                    complete: function(){
                        current_fs.hide();
                        animating = false;
                    },

                    easing: 'easeInOutBack'
                });
            }


        });
        /*from2*/
        /*正则表达式*/
        /*表单提交*/
    $(function(){

        /*金额验证*/
        $("#appliAmount").blur(function(){
            var reg=/^[1-9][0-9]$/;
            if ($("#appliAmount").val() == "") {
                $("#appliAmount").next("span").next("span").html("请输入贷款金额!").show();
                return;
            }
            if(!reg.test($("#appliAmount").val())){
                $("#appliAmount").next("span").next("span").html("请输入一个两位数数字!").show();
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
    })
        $("#next2").unbind("click").bind("click",function () {
             var userRegId= ${sessionScope.userLogin.userRegId};
            $("#form2").find("input").trigger("blur");
            $("#form2").find("select").trigger("blur");

            if ($(".alert:visible").size() > 0) {
                return false;
            }else{

                $.ajax({
                    url:"insertLoanInfo.action",
                    cache:false,
                    /*async:false,*/
                    type:"post",
                    dataType:"json",
                    data:{personId:userRegId,personName:$('#applicant').val(),
                        proName:$('#proName').val(),proType:$('#proType').val(),
                        appliAmount:$('#appliAmount').val(),approAmount:0,
                        anIntereRate:$('#anIntereRate').val(),fineInTerestRate:$('#fineInTerestRate').val(),
                        periodValidity:'12',singleLoanCycle:12,
                        interestRate:$('#interestRate').val(),repayMethod:$('#repayMethod').val(),
                        loanInformationStatusId:1},
                    success:function(num){
                        var loanId=num;
                        /*贷款信息状态修改*/
                        $.ajax({
                            url:"updateOneLoanInfo.action",
                            cache:false,
                            /*async:false,*/
                            type:"post",
                            dataType:"json",
                            data:{appliNumber:loanId,personId:userRegId,personName:$('#applicant').val(),
                                proName:$('#proName').val(),proType:$('#proType').val(),
                                appliAmount:$('#appliAmount').val(),approAmount:0,
                                anIntereRate:$('#anIntereRate').val(),fineInTerestRate:$('#fineInTerestRate').val(),
                                periodValidity:'12',singleLoanCycle:12,
                                interestRate:$('#interestRate').val(),repayMethod:$('#repayMethod').val(),
                                loanInformationStatusId:2},
                            success:function(num){
                                return;
                            },
                            error:function(){
                                alert("认证失败！");
                                return;
                            }
                        });
                        return;
                    },
                    error:function(){
                        alert("认证失败！");
                        return;
                    }
                });

                $("#applicant1").val($("#applicant").val());
                $("#proName1").val($("#proName").val());
                $("#interestRate1").val($("#interestRate").val());
                $("#proType1").val($("#proType").val());
                $("#appliAmount1").val($("#appliAmount").val());
                $("#repayMethod1").val($("#repayMethod").val());
                if(animating) return false;
                animating = true;

                current_fs = $(this).parent();
                next_fs = $(this).parent().next();

                $("#progressbar li").eq($("fieldset").index(next_fs)).addClass("vary");


                next_fs.show();

                current_fs.animate({opacity: 0}, {
                    step: function(now, mx) {

                        scale = 1 - (1 - now) * 0.2;

                        left = (now * 50)+"%";

                        opacity = 1 - now;
                        current_fs.css({'transform': 'scale('+scale+')'});
                        next_fs.css({'left': left, 'opacity': opacity});
                    },
                    duration: 800,
                    complete: function(){
                        current_fs.hide();
                        animating = false;
                    },
                    easing: 'easeInOutBack'
                });


            }
        });
        /*from3*/
        $("#next3").unbind("click").bind("click",function () {
            window.location.assign("<%=path%>jsp/index.jsp");
        });




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
