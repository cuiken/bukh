<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>首页导航图片管理</title>
    <script>
        $(document).ready(function () {
            $("#sidepic-tab").addClass("active");
            $("#sidepic-tab a").append("<i class='icon-remove-circle'></i>");
        });
    </script>
</head>

<body>
<h1>导航图片管理</h1>
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
        <th>名称</th>
        <th>描述</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${sidePics}" var="pic">
        <tr>
            <td>${pic.sortBy}</td>
            <td class="thumbnail_td"><img class="img-rounded" src="${ctx}/${pic.dirPath}"></td>
            <td><a href="${ctx}/admin/side_pic/update/${pic.id}">${pic.name}</a></td>
            <td>${pic.description}</td>
            <td><a href="${ctx}/admin/side_pic/delete/${pic.id}">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div><a class="btn" href="${ctx}/admin/side_pic/create">创建图片</a></div>
</body>
</html>
