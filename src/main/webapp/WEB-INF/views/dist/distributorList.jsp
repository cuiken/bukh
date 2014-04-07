<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>分销商管理</title>
    <script>
        $(document).ready(function () {
            $("#distributor-tab").addClass("active");
            $("#distributor-tab a").append("<i class='icon-remove-circle'></i>");

            $("#region").change(function(){
                $.ajax({
                    url:"${ctx}/admin/country/json?pid="+this.value,
                    type:'get',
                    dataType:'json',
                    success:function(data){

                    }
                });
            });
        });
    </script>
</head>

<body>
<h1>分销商管理</h1>
<c:if test="${not empty message}">
    <div id="message" class="alert alert-success">
        <button data-dismiss="alert" class="close">×</button>
            ${message}</div>
</c:if>
<div class="row">
    <div class="span8 offset2">
        区域：
        <select id="region" class="required">
            <option value="0">--请选择--</option>
            <c:forEach items="${region}" var="region">
                <option value="${region.id}">${region.value}</option>
            </c:forEach>
        </select>
        国家/地区：
        <select id="country" class="required">
            <option>--请选择--</option>
        </select>
    </div>
</div>
<table id="contentTable" class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>名称</th>
        <th>省份</th>
        <th>邮编</th>
        <th>电话</th>
        <th>传真</th>
        <th>邮箱</th>
        <th>网址</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${dists}" var="dist">
        <tr>
            <td><a href="${ctx}/admin/distributor/update/${dist.id}">${dist.name}</a></td>
            <td>${dist.province}</td>
            <td>${dist.zipCode}</td>
            <td>${dist.telephone}</td>
            <td>${dist.fax}</td>
            <td>${dist.email}</td>
            <td>${dist.website}</td>
            <td><a href="${ctx}/admin/distributor/delete/${dist.id}">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<div><a class="btn" href="${ctx}/admin/distributor/create">创建分销商</a></div>
</body>
</html>
