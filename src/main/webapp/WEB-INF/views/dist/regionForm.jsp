<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springside.org.cn/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>分类管理</title>
</head>

<body>
<form id="inputForm" action="${ctx}/admin/region/${action}" method="post" class="form-horizontal">
    <input type="hidden" name="id" value="${region.id}"/>
    <fieldset>
        <legend>
            <small>分类管理</small>
        </legend>
        <div class="control-group">
            <label class="control-label">E文名称:</label>

            <div class="controls">
                <input type="text" id="name" name="name" value="${region.name}" class="input-large required"
                       minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">中文名称:</label>

            <div class="controls">
                <input type="text" id="value" name="value" value="${region.value}" class="input-large" minlength="3"/>
            </div>
        </div>
        <div class="form-actions">
            <input id="submit_btn" class="btn btn-primary" type="submit" value="提交"/>&nbsp;
            <input id="cancel_btn" class="btn" type="button" value="返回" onclick="history.back()"/>
        </div>
    </fieldset>
</form>

<script>
    $(document).ready(function () {
        $("#region-tab").addClass("active");
        $("#region-tab a").append("<i class='icon-remove-circle'></i>");
        //聚焦第一个输入框
        $("#name").focus();
        //为inputForm注册validate函数
        $("#inputForm").validate();
    });
</script>
</body>
</html>
