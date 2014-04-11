<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>首页轮播图片管理</title>
    <script>
        $(document).ready(function () {
            $("#pic-tab").addClass("active");
            $("#pic-tab a").append("<i class='icon-remove-circle'></i>");
        });
    </script>
</head>

<body>
<h1>轮播图片管理</h1>
<c:if test="${not empty message}">
    <div id="message" class="alert alert-success">
        <button data-dismiss="alert" class="close">×</button>
            ${message}</div>
</c:if>

<table id="contentTable" class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>序号</th>
        <th>预览图</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${carousels}" var="carousel">
        <tr>
            <td>${carousel.sort}</td>
            <td class="thumbnail_td"><img class="img-rounded ad" src="${ctx}/${carousel.dirPath}"></td>
            <td>
                <a href="${ctx}/admin/carousel/update/${carousel.id}">修改</a>
                &nbsp;
                <a href="${ctx}/admin/carousel/delete/${carousel.id}">删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div><a class="btn" href="${ctx}/admin/carousel/create">创建图片</a></div>
</body>
</html>
