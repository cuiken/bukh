<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>产品管理</title>
    <script>
        $(document).ready(function() {
            $("#item-tab").addClass("active");
            $("#item-tab a").append("<i class='icon-remove-circle'></i>");
        });
    </script>
</head>

<body>
<h1>产品管理</h1>
<c:if test="${not empty message}">
    <div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
</c:if>

<table id="contentTable" class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>名称</th>
        <th>标题</th>
        <th>所属分类</th>
        <%--<th></th>--%>
        <%--<th></th>--%>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${items}" var="item">
        <tr>
            <td><a href="${ctx}/admin/item/update/${item.id}">${item.name}</a></td>
            <td>${item.title}</td>
            <td>${item.category.name}</td>
            <%--<td></td>--%>
            <%--<td></td>--%>
            <td><a href="${ctx}/admin/item/delete/${item.id}">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div><a class="btn" href="${ctx}/admin/item/create">新增</a></div>
</body>
</html>
