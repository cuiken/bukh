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
    <title>Profil - BUKH</title>
    <link rel="stylesheet" href="${ctx}/static/styles/w_default.css">
    <link rel="stylesheet" href="${ctx}/static/styles/modules.css">
    <link rel="stylesheet" href="${ctx}/static/styles/dynamic_width.css">
</head>
<body class=" bodyCatId7 bodyPageId10">
<div id="Wrapper">
    <%@include file="common/header.jsp" %>
    <div id="InnerWrapper">
        <div id="ContentWrapper">
            <div id="ContentTop">

            </div>
            <div id="Content">
                <div id="MainContentWrapper">
                    <div id="MainContentTop">

                    </div>
                    <div id="MainContent">
                        <h1>主标题</h1>

                        <h3>副标题</h3>
                        <br/>
                        <img src="${ctx}/static/images/temp/bukh_callesen.PNG"/>
                        <br/>
                        <span>内容</span>
                    </div>
                    <div id="MainContentBottom"></div>
                </div>
                <div id="RightColumnWrapper">
                    <div id="RightColumn">
                        <div class="pagecontent-box">
                            <div class="pagecontent-box-top"></div>
                            <div class="pagecontent-box-content">
                                <a href="${ctx}/contact"><img src="${ctx}/static/images/contact_us.PNG"
                                                              style="width: 200px; height: 45px; border-width: 0pt; border-style: solid;"></a>
                                <a href="${ctx}/distributors"><img src="${ctx}/static/images/find_distributor.png"
                                                                   style="width: 200px; height: 45px; border-width: 0pt; border-style: solid;"></a>
                            </div>
                            <div class="pagecontent-box-bottom" id="pagecontent-box-bottom-63"></div>
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
<script>
    $(function () {
        $("#nav-profil a").addClass("active");
    })
</script>
</body>
</html>