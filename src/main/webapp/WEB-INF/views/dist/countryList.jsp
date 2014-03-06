<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>国家管理</title>
    <script>
        $(document).ready(function () {
            $("#country-tab").addClass("active");
            $("#country-tab a").append("<i class='icon-remove-circle'></i>");
        });
    </script>
</head>

<body>
<h1>国家管理</h1>
<c:if test="${not empty message}">
    <div id="message" class="alert alert-success">
        <button data-dismiss="alert" class="close">×</button>
            ${message}</div>
</c:if>
<div class="row">
    <div class="span4 offset7">
        <form class="form-search" action="#">
            <label>E文名称：</label> <input type="text" name="filter_LIKES_name" class="input-medium" value="${param.filter_LIKES_name}">
            <button type="submit" class="btn" id="search_btn">Search</button>
        </form>
    </div>
    <tags:sort/>
</div>
<table id="contentTable" class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>E文名称</th>
        <th>中文名称</th>
        <th>所属区域</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${page.result}" var="country">
        <tr>
            <td><a href="${ctx}/admin/country/update/${country.id}">${country.name}</a></td>
            <td>${country.value}</td>
            <td>${country.region.name}</td>
            <td><a href="${ctx}/admin/country/delete/${country.id}">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<tags:pagination page="${page}" paginationSize="5"/>
<div><a class="btn" href="${ctx}/admin/country/create">创建国家</a></div>
</body>
</html>
