<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>分类管理</title>
    <script>
        $(document).ready(function () {
            $("#category-tab").addClass("active");
            $("#category-tab a").append("<i class='icon-remove-circle'></i>");
        });
    </script>
</head>

<body>
<h1>分类管理</h1>
<c:if test="${not empty message}">
    <div id="message" class="alert alert-success">
        <button data-dismiss="alert" class="close">×</button>
            ${message}</div>
</c:if>

<table id="contentTable" class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>名称</th>
        <th>编码</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${categories}" var="category">
        <tr>
            <td><a href="${ctx}/admin/category/update/${category.id}">${category.name}</a></td>
            <td>${category.code}</td>

            <td><a href="${ctx}/admin/category/delete/${category.id}">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div><a class="btn" href="${ctx}/admin/category/create">创建分类</a></div>
</body>
</html>
