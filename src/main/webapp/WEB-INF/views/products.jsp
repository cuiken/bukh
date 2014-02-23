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
    <title>Products - BUKH</title>
    <link rel="stylesheet" href="${ctx}/static/lightbox/css/lightbox.css">
    <link rel="stylesheet" href="${ctx}/static/styles/w_default.css">
    <link rel="stylesheet" href="${ctx}/static/styles/modules.css">
    <link rel="stylesheet" href="${ctx}/static/styles/dynamic_width.css">
</head>
<body class="bodyCatId13 bodyPageId39">
<div id="Wrapper">
    <%@include file="common/header.jsp" %>
    <div id="InnerWrapper">
        <div id="ContentWrapper">
            <div id="PictureElement">
                <img src="${ctx}/static/images/corner-pe.png" class="rounded-corner"/>

                <div id="peSlider3231">
                    <a href="${ctx}/static/images/temp/VGT_DSC4289.jpg" rel="lightbox[motorer]">
                        <img src="${ctx}/static/images/temp/VGT_DSC4289.w720.h250.crop.jpg"/>
                    </a>
                </div>
            </div>
            <div id="ContentTop">

            </div>
            <div id="Content" style="height: 1152px;">
                <div id="LeftColumn">
                    <div id="Navigation_2nd">
                        <ul>
                            <li><a>BUKH VGT</a></li>
                            <li><a>BUKH BETA</a></li>
                        </ul>
                    </div>
                </div>
                <div id="MainContentWrapper" style="width: 440px;">
                    <div id="MainContentTop">

                    </div>
                    <div id="MainContent" style="margin-top: 240px; width: 440px;">
                        <h1>one</h1>

                        <h2>two</h2>

                        <h3>three</h3>
                    </div>
                    <div id="MainContentBottom"></div>
                </div>
                <div id="RightColumnWrapper" style="padding: 20px 0px 0px; margin-top: 240px;">
                    <div id="RightColumn">
                        <div class="pagecontent-box">
                            <div class="pagecontent-box-top"></div>
                            <div class="pagecontent-box-content">
                                <a href="${ctx}/static/images/temp/VGT350-500_PRD.jpg" rel="lightbox[motorer]">
                                    <img src="${ctx}/static/images/temp/bukh_vgt_350-500.JPG"/>
                                </a>
                                <br/>
                                <span>Click for enlargement</span>
                                <br/><br/>
                                <a>
                                    <img src="${ctx}/static/images/temp/bukh_technical_drawing.JPG"/>
                                    <br/><span>Technical drawing</span>
                                </a>
                                <br/><br/>
                                <h4>
                                    <img src="${ctx}/static/images/pdf-headline.png"/>
                                </h4>

                                <p>
                                    <a>Product brochure</a><br/>
                                    <a>Technical drawing</a><br/>
                                    <a>Torque curves</a>
                                </p>
                            </div>
                            <div class="pagecontent-box-bottom"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="ContentBottom">

            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp" %>

<script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
<script src="${ctx}/static/lightbox/js/lightbox-2.6.min.js"></script>
<script>
    $(function () {
        $("#nav-products a").addClass("active");
    })
</script>
</body>
</html>