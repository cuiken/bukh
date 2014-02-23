<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter" %>
<%@ page import="org.apache.shiro.authc.LockedAccountException " %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>登录页</title>
    <link href="${ctx}/static/bootstrap/2.3.2/css/bootstraped.min.css" type="text/css" rel="stylesheet"/>
    <link href="${ctx}/static/bootstrap/2.3.2/css/bootstraped-responsive.min.css" type="text/css" rel="stylesheet"/>
    <link href="${ctx}/static/jquery-validation/1.11.1/validate.css" type="text/css" rel="stylesheet"/>
    <link href="${ctx}/static/styles/default.min.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="${ctx}/static/styles/w_default.css">
    <link rel="stylesheet" href="${ctx}/static/styles/modules.css">
    <script src="${ctx}/static/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/jquery-validation/1.11.1/jquery.validate.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/jquery-validation/1.11.1/messages_bs_zh.js" type="text/javascript"></script>
    <style>
        body {
            font: 14px/20px Arial, sans-serif;
            color: #323232;
            background: #fafafa url("${ctx}/static/images/background.png") repeat-x center 54px;
        }

        .form-signin {
            max-width: 350px;
            padding: 19px 20px 29px;
            margin: 5% 30% 20px auto;
            background: #fff;
            position: relative;
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #fff), color-stop(100%, #ddd));
            background: -webkit-linear-gradient(top, #fff 0, #ddd 100%);
            background: -moz-linear-gradient(top, #fff 0, #ddd 100%);
            background: -ms-linear-gradient(top, #fff 0, #ddd 100%);
            background: -o-linear-gradient(top, #fff 0, #ddd 100%);
            background: linear-gradient(top, #fff 0, #ddd 100%);
            border: 1px solid #e5e5e5;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            -moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
            box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
        }

        .form-signin .form-signin-heading,
        .form-signin .checkbox {
            margin-bottom: 10px;
        }

        .form-signin input[type="text"],
        .form-signin input[type="password"] {
            font-size: 16px;
            height: auto;
            margin-bottom: 15px;
            padding: 7px 9px;
        }

    </style>
</head>

<body class="bodyPageId1">
<div id="Wrapper">
    <div id="Top">
        <div id="Logo">
            <a href="${ctx}"><img src="${ctx}/static/images/logo.png" alt=""></a>
        </div>
    </div>
</div>
<form id="loginForm" class="form-signin" action="${ctx}/login" method="post">
    <%
        String error = (String) request.getAttribute(FormAuthenticationFilter.DEFAULT_ERROR_KEY_ATTRIBUTE_NAME);
        if (error != null) {
    %>
    <div class="alert alert-error controls input-large">
        <button class="close" data-dismiss="alert">×</button>
        <%
            if (error.contains("DisabledAccountException")) {
                out.print("用户已被屏蔽,请登录其他用户.");
            } else {
                out.print("登录失败，请重试.");
            }
        %>
    </div>
    <%
        }
    %>
    <h2 class="form-signin-heading">登录</h2>

    <div class="control-group">
        <%--<label for="username" class="control-label">账号:</label>--%>
        <div class="controls">
            <input type="text" placeholder="帐号" id="username" name="username" value="${username}"
                   class="span3 required"/>
        </div>
    </div>
    <div class="control-group">
        <%--<label for="password" class="control-label">密码:</label>--%>
        <div class="controls">
            <input type="password" placeholder="密码" id="password" name="password" class="span3 required"/>
        </div>
    </div>
    <div class="control-group">
        <div class="controls">
            <label class="checkbox" for="rememberMe"> <input type="checkbox" id="rememberMe" name="rememberMe"/>
                记住我</label>
            <input id="submit_btn" class="btn btn-large btn-primary" type="submit" value="登录"/>
        </div>
    </div>
</form>
<%@include file="common/footer.jsp"%>

<script>
    $(document).ready(function () {
        $("#username").focus();
        $("#loginForm").validate();
    });
</script>
</body>
</html>
