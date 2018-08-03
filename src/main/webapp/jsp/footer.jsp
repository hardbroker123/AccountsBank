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

        <!DOCTYPE html>
        <html lang="en">
        <head>

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
        <title>融智达</title>
        <link rel="stylesheet" type="text/css" href="<%=path%>font/Assets/css/reset.css"/>
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


        </head>
        <body>
        <div class="f_bg">
        <div class="foot">
        <div class="f_m clearfix">
        <div class="f_v">
        <div class="b_h">媒体报道</div>
        <ul class="clearfix">
        <li><a href=""><img src="<%=path%>font/Assets/upload/pic3.jpg" alt=""/></a></li>
        <li><a href=""><img src="<%=path%>font/Assets/upload/pic3.jpg" alt=""/></a></li>
        <li><a href=""><img src="<%=path%>font/Assets/upload/pic3.jpg" alt=""/></a></li>
        <li><a href=""><img src="<%=path%>font/Assets/upload/pic3.jpg" alt=""/></a></li>
        </ul>
        </div>
        <div class="share">
        <a href=""><img src="<%=path%>font/Assets/images/icon3.png" alt=""/></a>
        <a href=""><img src="<%=path%>font/Assets/images/icon4.png" alt=""/></a>
        <a href=""><img src="<%=path%>font/Assets/images/icon5.png" alt=""/></a>
        </div>
        </div>
        <p>地址：深圳市福田区车公庙深南大道6015号本元大厦10A电话：0755-82095403 0755-82095327</p>
        <p>版权所有 © 2011-2014 深圳融智达有限公司 粤ICP备14014796号-1 站长统计</p>
        </div>
        </div>
        </body>
        </html>
