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
    <title>Contact - BUKH</title>
    <link rel="stylesheet" href="${ctx}/static/styles/w_default.css">
    <link rel="stylesheet" href="${ctx}/static/styles/modules.css">
</head>
<body class="bodyCatId7 bodyPageId10  bodyPageTypeTekst">
<div id="Wrapper">
    <%@include file="common/header.jsp" %>
    <div id="InnerWrapper">
        <div id="ContentWrapper">
            <div id="ContentTop">

            </div>
            <div id="Content" style="height: 1152px;">
                <div id="MainContentWrapper">
                    <div id="MainContentTop">

                    </div>
                    <div id="MainContent">

                    </div>
                    <div id="MainContentBottom"></div>
                </div>
                <div id="RightColumnWrapper"></div>
            </div>
            <div id="ContentBottom">

            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp"%>
<script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
<script>
    $(function(){
        $("#nav-contact a").addClass("active");
    })
</script>
</body>
</html>