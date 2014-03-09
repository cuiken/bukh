<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>用户反馈</title>
    <script>
        $(document).ready(function() {
            $("#contact-tab").addClass("active");
            $("#contact-tab a").append("<i class='icon-remove-circle'></i>");
        });
    </script>
</head>

<body>
<h1>用户反馈</h1>
<c:if test="${not empty message}">
    <div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${message}</div>
</c:if>

<table id="contentTable" class="table table-bordered table-hover">
    <thead>
    <tr>
        <th>姓名</th>
        <th>电话号码</th>
        <%--<th></th>--%>
        <th>邮箱</th>
        <th>主题</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${contacts}" var="contact">
        <tr>
            <td><a href="#">${contact.name}</a></td>
            <td>${contact.telephone}</td>
            <td>${contact.email}</td>
            <td>${contact.subject}</td>
            <%--<td></td>--%>
            <td>--</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
