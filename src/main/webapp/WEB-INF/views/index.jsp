<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome - BUKH</title>
    <link rel="stylesheet" href="${ctx}/static/styles/w_default.css">
    <link rel="stylesheet" href="${ctx}/static/styles/modules.css">

    <style>
        .slider-wrapper.theme-default {
            width: 1002px;
        }

        #MainContent img {
            width: 239px;
            height: 147px;
            border-width: 0pt;
            border-style: solid;
        }
    </style>

</head>
<body class="bodyPageId1">
<div id="Wrapper">
    <%@include file="common/header.jsp"%>
    <div id="Header">
        <img src="${ctx}/static/images/corner-pe.png" class="rounded-corner"/>

        <div class="slider-wrapper theme-default">
            <div id="peSlider283" class="PESlider nivoSlider pager">
                <c:forEach items="${carousels}" var="carousel">
                    <img src="${ctx}/${carousel.dirPath}" style="width: 1002px; height: 310px;">
                </c:forEach>
            </div>
            <div class="nivo-image-captions" style="display: none;"></div>
        </div>
        <div id="SliderPagination"></div>
    </div>
    <div id="InnerWrapper">
        <div id="ContentWrapper">
            <div id="ContentTop"></div>
            <div id="Content">
                <div id="MainContentTop"></div>
                <div id="MainContent">
                    <div>
                        <div>
                            <c:forEach items="${sidePics}" var="sidePic">
                                <a href="${sidePic.link}"><img src="${ctx}/${sidePic.dirPath}"></a>
                            </c:forEach>
                        </div>
                        <div class="FrontpageTeaserContent">
                            <div style="width: 226px; padding: 0px 10px; float: left;">
                                <h2>BUKH</h2>

                                <p>ddddd</p>
                            </div>
                            <div style="width: 226px; padding: 0px 10px; float: left;">
                                <h2>Callesen </h2>

                                <p>ddd</p>
                            </div>
                            <div style="width: 226px; padding: 0px 10px; float: left;">
                                <h2>dfdfdfd</h2>

                                <p>fdd</p>
                            </div>
                            <div style="width: 226px; padding: 0px 10px; float: left;">
                                <h2>fdfd</h2>

                                <p>fdfdfd</p>
                            </div>
                        </div>
                        <div>
                            <img src="${ctx}/static/images/bukh_frontpage_bottom.png"
                                 style="width: 970px; height: 24px; border-width: 0pt; border-style: solid;"/>
                        </div>
                    </div>
                </div>
                <div id="MainContentBottom"></div>
            </div>
            <div id="ContentBottom"></div>
        </div>
        <div stype="clear:both;"></div>
    </div>
</div>
<%@include file="common/footer.jsp"%>


<script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/jquery/jquery.nivo.slider.pack-2.6.js"></script>
<script type="text/javascript">
    jQuery(function ($) {
        $("#peSlider283").nivoSlider({
            effect: "fade",
            animSpeed: 500,
            pauseTime: 8000,
            directionNav: true,
            controlNav: true,
            pauseOnHover: false,
            manualAdvance: false
        });
        $("#nav-home a").addClass("active");
    });
</script>
</body>

</html>