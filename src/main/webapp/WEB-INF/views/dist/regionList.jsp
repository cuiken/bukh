<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>区域管理</title>
    <script>
        $(document).ready(function () {
            $("#region-tab").addClass("active");
            $("#region-tab a").append("<i class='icon-remove-circle'></i>");
        });
    </script>
</head>

<body>
<h1>区域管理</h1>
<c:if test="${not empty message}">
    <div id="message" class="alert alert-success">
        <button data-dismiss="alert" class="close">×</button>
            ${message}</div>
</c:if>

<table id="contentTable" class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>E文名称</th>
        <th>中文名称</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${regions}" var="region">
        <tr>
            <td><a href="${ctx}/admin/region/update/${region.id}">${region.name}</a></td>
            <td>${region.value}</td>

            <td><a href="${ctx}/admin/region/delete/${region.id}">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div><a class="btn" href="${ctx}/admin/region/create">创建分类</a></div>
</body>
</html>
