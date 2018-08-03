<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
        <%
    String path=request.getScheme()+"://"
            +request.getServerName()+":"
            +request.getServerPort()
            +request.getContextPath()+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>融智达</title>
<link rel="stylesheet" type="text/css" href="../font/Assets/css/reset.css"/>
<script type="text/javascript" src="../font/Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../font/Assets/js/js_z.js"></script>
<link rel="stylesheet" type="text/css" href="../font/Assets/plugins/FlexSlider/flexslider.css">
<script type="text/javascript" src="../font/Assets/plugins/FlexSlider/jquery.flexslider.js"></script>
<link rel="stylesheet" type="text/css" href="../font/Assets/css/thems.css">
<link rel="stylesheet" type="text/css" href="../font/Assets/css/responsive.css">
<script language="javascript">
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide"
  });
var i_h=$('.banner .tu img').height();
$('.f_sq .f_sqm').css({height:i_h+'px',top:-i_h+'px'});

});
</script>

</head>

<body>
<!--头部-->
    <jsp:include page="header.jsp"></jsp:include>
<!--头部-->
<!--幻灯片-->
<div class="banner">
	<div class="slider">
        <div class="flexslider">
          <ul class="slides">
            <li><a href="#"><img src="../font/Assets/upload/banner.jpg" alt="" /></a></li>
            <li><a href="sense.jsp"><img src="../font/Assets/upload/banner_b.jpg" alt="" /></a></li>
            <li><a href="contact.jsp"><img src="../font/Assets/upload/banner_c.jpg" alt="" /></a></li>
            <li><a href="loanApply/apply.jsp"><img src="../font/Assets/upload/banner_d.jpg" alt="" /></a></li>
            <li><a href="about.jsp"><img src="../font/Assets/upload/banner_e.jpg" alt="" /></a></li>
            <li><a href="product.jsp"><img src="../font/Assets/upload/banner_f.jpg" alt="" /></a></li>
            <li><a href="news.jsp"><img src="../font/Assets/upload/banner_g.jpg" alt="" /></a></li>
          </ul>
        </div>
    </div>
    <div class="tu"><img src="../font/Assets/upload/banner.jpg" alt=""/></div>
    <div class="f_sq">
        <div class="f_sqm">
            <div class="title">快速申请</div>
            <ul>
                <li><a href=""><span>在线申请</span></a></li>
                <li>400-991-3768</li>
            </ul>
        </div>
    </div>
</div>
<!--幻灯片-->
<div class="i_bg_a">
	<div class="i_service">
    	<div class="i_name"><a href=""><img src="../font/Assets/images/i_1.png" width="155" height="48" alt=""/></a></div>
        <ul class="clearfix">
        	<li>
            	<a href="">
                	<div class="tu"><img src="../font/Assets/images/pic5.jpg" alt=""/></div>
                    <h6>抵押贷款</h6>
                </a>
            </li>
            <li>
            	<a href="">
                	<div class="tu"><img src="../font/Assets/images/pic6.jpg" alt=""/></div>
                    <h6>转按贷款</h6>
                </a>
            </li>
            <li>
            	<a href="">
                	<div class="tu"><img src="../font/Assets/images/pic7.jpg" alt=""/></div>
                    <h6>过户贷款</h6>
                </a>
            </li>
            <li>
            	<a href="">
                	<div class="tu"><img src="../font/Assets/images/pic8.jpg" alt=""/></div>
                    <h6>经营贷款</h6>
                </a>
            </li>
            <li>
            	<a href="">
                	<div class="tu"><img src="../font/Assets/images/pic9.jpg" alt=""/></div>
                    <h6>消费贷款</h6>
                </a>
            </li>
            <li>
            	<a href="">
                	<div class="tu"><img src="../font/Assets/images/pic10.jpg" alt=""/></div>
                    <h6>装修贷款</h6>
                </a>
            </li>
        </ul>
        <div class="space_hx">&nbsp;</div>
        <div class="more"><a href="">+ 更多贷款</a></div>
    </div>
</div>
<div class="i_bg_b"><img src="../font/Assets/images/bg_b.png" alt=""/></div>
<div class="i_news">
	<div class="i_name"><a href=""><img src="../font/Assets/images/i_2.png" width="127" height="47" alt=""/></a></div>
    <div class="i_newm clearfix">
    	<dl class="clearfix">
        	<a href="">
            	<dt><img src="../font/Assets/upload/pic2.jpg" alt=""/><i>&nbsp;</i></dt>
                <dd>
                	<div class="title">目的地资料维护</div>
                    <div class="des">提供给管理员对全网络目的地和派件代理商之间对应关系的新增、修改/删除、查询功能之间对应关系的新增、修改/删除、......     <em>{查看详情}</em></div>
                </dd>
            </a>
        </dl>
        <dl class="clearfix">
        	<a href="">
            	<dt><img src="../font/Assets/upload/pic2.jpg" alt=""/><i>&nbsp;</i></dt>
                <dd>
                	<div class="title">目的地资料维护</div>
                    <div class="des">提供给管理员对全网络目的地和派件代理商之间对应关系的新增、修改/删除、查询功能之间对应关系的新增、修改/删除、......     <em>{查看详情}</em></div>
                </dd>
            </a>
        </dl>
        <dl class="clearfix">
        	<a href="">
            	<dt><img src="../font/Assets/upload/pic2.jpg" alt=""/><i>&nbsp;</i></dt>
                <dd>
                	<div class="title">目的地资料维护</div>
                    <div class="des">提供给管理员对全网络目的地和派件代理商之间对应关系的新增、修改/删除、查询功能之间对应关系的新增、修改/删除、......     <em>{查看详情}</em></div>
                </dd>
            </a>
        </dl>
        <dl class="clearfix">
        	<a href="">
            	<dt><img src="../font/Assets/upload/pic2.jpg" alt=""/><i>&nbsp;</i></dt>
                <dd>
                	<div class="title">目的地资料维护</div>
                    <div class="des">提供给管理员对全网络目的地和派件代理商之间对应关系的新增、修改/删除、查询功能之间对应关系的新增、修改/删除、......     <em>{查看详情}</em></div>
                </dd>
            </a>
        </dl>
        <dl class="clearfix">
        	<a href="">
            	<dt><img src="../font/Assets/upload/pic2.jpg" alt=""/><i>&nbsp;</i></dt>
                <dd>
                	<div class="title">目的地资料维护</div>
                    <div class="des">提供给管理员对全网络目的地和派件代理商之间对应关系的新增、修改/删除、查询功能之间对应关系的新增、修改/删除、......     <em>{查看详情}</em></div>
                </dd>
            </a>
        </dl>
        <dl class="clearfix">
        	<a href="">
            	<dt><img src="../font/Assets/upload/pic2.jpg" alt=""/><i>&nbsp;</i></dt>
                <dd>
                	<div class="title">目的地资料维护</div>
                    <div class="des">提供给管理员对全网络目的地和派件代理商之间对应关系的新增、修改/删除、查询功能之间对应关系的新增、修改/删除、......     <em>{查看详情}</em></div>
                </dd>
            </a>
        </dl>
        <div class="space_hx">&nbsp;</div>
        <div class="more"><a href="">+ 更多资讯</a></div>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
<div class="step">
	<div class="i_name"><a href=""><img src="../font/Assets/images/i_3.png" width="214" height="50" alt=""/></a></div>
    <ul class="clearfix">
    	<li>
        	<img src="../font/Assets/images/pic1.jpg" alt=""/>
            <div class="name">提交申请</div>
            <p>准备材料并提交申请</p>
        </li>
        <li class="duan"><img src="../font/Assets/images/pic4.jpg" alt=""/></li>
        <li>
        	<img src="../font/Assets/images/pic2.jpg" alt=""/>
            <div class="name">等待审核</div>
            <p>工作人员需要审核你的材料</p>
        </li>
        <li class="duan"><img src="../font/Assets/images/pic4.jpg" alt=""/></li>
        <li>
        	<img src="../font/Assets/images/pic3.jpg" alt=""/>
            <div class="name">放款成功</div>
            <p>审核通过后最快一天就可获得借款</p>
        </li>
    </ul>
</div>
<div class="space_hx">&nbsp;</div>
<div class="i_news">
	<div class="box_h">
    	<span>公司动态<em>/News</em></span>
    </div>
    <div class="i_nm clearfix">
    	<div class="tu">
            <a href="">
            <img src="../font/Assets/upload/pic1.jpg" alt=""/>
            <div class="des"><p>1融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构… 2015-09-18</p></div>
            </a>
        </div>
        <ul class="wen">
        	<li class="now">
            	<div class="title">
                	<i>&nbsp;</i>
                    <p><a href="">融智达消费金融有限公司成立于2012年, 是一家专门!</a></p>
                </div>
                <div class="l_m">
                	<div class="des_c">融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构.为企业以及个人量身定制银行贷款方案的融资机构......</div>
                    <img src="../font/Assets/upload/pic1.jpg" alt=""/>
                    <div class="des_d">1融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构… 2015-09-18</div>
                </div>
            </li>
            <li>
            	<div class="title">
                	<i>&nbsp;</i>
                    <p><a href="">融智达消费金融有限公司成立于2012年, 是一家专门!</a></p>
                </div>
                <div class="l_m">
                	<div class="des_c">融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构.为企业以及个人量身定制银行贷款方案的融资机构......</div>
                    <img src="../font/Assets/upload/pic2.jpg" alt=""/>
                    <div class="des_d">2融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构… 2015-09-18</div>
                </div>
            </li>
            <li>
            	<div class="title">
                	<i>&nbsp;</i>
                    <p><a href="">融智达消费金融有限公司成立于2012年, 是一家专门!</a></p>
                </div>
                <div class="l_m">
                	<div class="des_c">融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构.为企业以及个人量身定制银行贷款方案的融资机构......</div>
                    <img src="../font/Assets/upload/pic1.jpg" alt=""/>
                    <div class="des_d">3融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构… 2015-09-18</div>
                </div>
            </li>
            <li>
            	<div class="title">
                	<i>&nbsp;</i>
                    <p><a href="">融智达消费金融有限公司成立于2012年, 是一家专门!</a></p>
                </div>
                <div class="l_m">
                	<div class="des_c">融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构.为企业以及个人量身定制银行贷款方案的融资机构......</div>
                    <img src="../font/Assets/upload/pic2.jpg" alt=""/>
                    <div class="des_d">4融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构… 2015-09-18</div>
                </div>
            </li>
            <li>
            	<div class="title">
                	<i>&nbsp;</i>
                    <p><a href="">融智达消费金融有限公司成立于2012年, 是一家专门!</a></p>
                </div>
                <div class="l_m">
                	<div class="des_c">融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构.为企业以及个人量身定制银行贷款方案的融资机构......</div>
                    <img src="../font/Assets/upload/pic1.jpg" alt=""/>
                    <div class="des_d">5融智达消费金融有限公司成立于2012年, 是一家专门为企业以及个人量身定制银行贷款方案的融资机构… 2015-09-18</div>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
<div class="i_bg_a">
	<div class="i_box clearfix">
    	<div class="a_l">
        	<div class="box_h">
                <span>公司优势<em>/Advantage</em></span>
            </div>
            <div class="a_lm">
            	<dl class="clearfix">
                	<dt>
                    	<img src="../font/Assets/images/icon8.png" alt=""/>
                        <p>消费送股权</p>
                    </dt>
                    <dd>
                    	<p>消费满<em>10万</em>，成为融智达<em>会员</em></p>
                        <p>消费满<em>20万</em>，送融智达<em>0.5%</em>股权</p>
                        <p>消费满<em>30万</em>，送融智达<em>1%</em>股权</p>
                    </dd>
                </dl>
                <dl class="clearfix">
                	<dt>
                    	<img src="../font/Assets/images/icon9.png" alt=""/>
                        <p>享受等额服务</p>
                    </dt>
                    <dd>
                    	<p class="black">1.雅媛堂身心灵服务</p>
                        <p>《舞动奇迹》、<em>《演讲与口才》</em></p>
                        <p><em>《幸福婚姻》</em>、《色彩搭配》</p>
                    </dd>
                </dl>
                <div>
                	<p class="black">3.顶誉生物科技公司服务</p>
                    <p>(专家健康主题讲座、<em>专家问诊</em>和<em>专属调养</em>咨询、三餐定制和家庭医生配备、免疫细胞储存和抗衰防癌服务)</p>
                </div>
                <div>
                	<p class="black">4.双月湾·檀悦豪生私董会服务</p>
                    <p>(<em>六星级</em>酒店檀悦豪生<em>价值20万</em>服务;)</p>
                </div>
            </div>
        </div>
        <div class="a_r">
        	<div class="box_h">
                <span>贷款常识<em>/Common sense</em></span>
                <a href="" class="h_more">+ MORE</a>
            </div>
            <ul>
            	<li>
                	<div class="title"><a href="">1.深圳市融智达消费金融有限公司?</a></div>
                    <div class="des">自成立以来公司以服务超过3000家客户。公司本着诚实守信、勤勉尽责的原则，充分发挥自身项目来源广泛、人脉资源丰富，实践经验丰富的优势，为广大的创业者搭建通往成功的桥梁。</div>
                </li>
                <li>
                	<div class="title"><a href="">1.深圳市融智达消费金融有限公司?</a></div>
                    <div class="des">自成立以来公司以服务超过3000家客户。公司本着诚实守信、勤勉尽责的原则，充分发挥自身项目来源广泛、人脉资源丰富，实践经验丰富的优势，为广大的创业者搭建通往成功的桥梁。</div>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="i_bg_b"><img src="../font/Assets/images/bg_b.png" alt=""/></div>
<div class="i_case">
	<div class="i_name"><img src="../font/Assets/images/i_4.png" width="172" height="49" alt=""/></div>
    <div class="i_casem">
    	<div class="line">&nbsp;</div>
        <ul class=" clearfix">
        	<li>
            	<div class="li_m">
                    <i>&nbsp;</i>
                    <p><a href="">2015-10-02 <em>自成立以来公司以服务超过3000家客户。本着......</em></a></p>
                </div>
            </li>
            <li class="l_er">
            	<div class="li_m">
                    <i>&nbsp;</i>
                    <p><a href=""><em>自成立以来公司以服务超过3000家客户。本着......</em>2015-10-02 </a></p>
                </div>
            </li>
            <li>
            	<div class="li_m">
                    <i>&nbsp;</i>
                    <p><a href="">2015-10-02 <em>自成立以来公司以服务超过3000家客户。本着......</em></a></p>
                </div>
            </li>
            <li class="l_er">
            	<div class="li_m">
                    <i>&nbsp;</i>
                    <p><a href=""> <em>自成立以来公司以服务超过3000家客户。本着......</em>2015-10-02</a></p>
                </div>
            </li>
            <li>
            	<div class="li_m">
                    <i>&nbsp;</i>
                    <p><a href="">2015-10-02 <em>自成立以来公司以服务超过3000家客户。本着......</em></a></p>
                </div>
            </li>
            <li class="l_er">
            	<div class="li_m">
                    <i>&nbsp;</i>
                    <p><a href=""> <em>自成立以来公司以服务超过3000家客户。本着......</em>2015-10-02</a></p>
                </div>
            </li>
            <li>
            	<div class="li_m">
                    <i>&nbsp;</i>
                    <p><a href="">2015-10-02 <em>自成立以来公司以服务超过3000家客户。本着......</em></a></p>
                </div>
            </li>
        </ul>
    </div>
</div>
<div class="space_hx">&nbsp;</div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
