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
    <title>BUKH</title>
    <link rel="stylesheet" href="${ctx}/static/styles/w_default.css">
    <link rel="stylesheet" href="${ctx}/static/styles/modules.css">

    <script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/jquery/jquery.nivo.slider.pack-2.6.js"></script>
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
        });
    </script>

</head>
<body class="bodyPageId1">
<div id="Wrapper">
    <div id="Top">
        <div id="Logo">
            <a href=""><img src="${ctx}/static/images/logo.png" alt=""></a>
        </div>
        <div id="QuickNavigation">
            <div id="Language">
                <span id="language-uk">
                    <a href="?locale=en"><img src="${ctx}/static/images/uk.png"></a>
                </span>
            </div>
            <div class="usermenu">
                <ul>
                    <li><a href="${ctx}/login">登录</a></li>
                </ul>
            </div>
        </div>
        <div id="Navigation">
            <ul>
                <li id="Li_CatItem1_uk" class="current">
                    <a href="${ctx}" class="active"><span><spring:message code="nav.home"/> </span></a>
                </li>
                <li><a href="#"><span><spring:message code="nav.bukh"/> </span></a></li>
                <li><a href="#"><span><spring:message code="nav.products"/> </a></li>
                <li><a href="#"><span><spring:message code="nav.callesen_diesel"/> </span></a></li>
                <li><a href="#"><span><spring:message code="nav.distributors"/> </span></a></li>
                <li><a href="#"><span><spring:message code="nav.contact"></spring:message> </span></a></li>
            </ul>
        </div>
    </div>
    <div id="Header">
        <img src="${ctx}/static/images/corner-pe.png" class="rounded-corner" />
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
                            <a href=""><img src="static/images/bukh_motorer_t1.png" alt=""></a>
                            <a href=""><img src="static/images/callesen_diesel_motorer.png" alt=""></a>
                            <a href=""><img src="static/images/din_naermeste_forhandler.png" alt=""></a>
                            <a href=""><img src="static/images/bukh_kontakt.png" alt=""></a>
                        </div>
                        <div class="FrontpageTeaserContent">
                            <div>
                                <h2>BUKH</h2>

                                <p></p>
                            </div>
                            <div>
                                <h2>Callesen </h2>

                                <p></p>
                            </div>
                            <div>
                                <h2></h2>

                                <p></p>
                            </div>
                            <div>
                                <h2></h2>

                                <p></p>
                            </div>
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


</body>

</html>