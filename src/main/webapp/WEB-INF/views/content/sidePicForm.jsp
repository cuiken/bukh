<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springside.org.cn/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>导航图片管理</title>
</head>

<body>
<form id="inputForm" action="${ctx}/admin/side_pic/${action}" enctype="multipart/form-data" method="post"
      class="form-horizontal">
    <input type="hidden" name="id" value="${sidePic.id}"/>
    <fieldset>
        <legend>
            <small>导航图片管理</small>
        </legend>
        <div class="control-group">
            <label class="control-label">序号:</label>

            <div class="controls">
                <input type="text" id="sortBy" name="sortBy" value="${sidePic.sortBy}" class="input-large required number"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">名称:</label>

            <div class="controls">
                <input type="text" id="name" name="name" value="${sidePic.name}" class="input-large required"
                       minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">链接:</label>

            <div class="controls">
                <input type="text" id="link" name="link" value="${sidePic.link}" class="input-large url"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">描述:</label>

            <div class="controls">
                <input type="text" id="description" name="description" value="${sidePic.description}"
                       class="input-large required" minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">图片:</label>

            <div class="controls">
                <input type="file" id="file" name="file" class="input-file"/>
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
        $("#sidepic-tab").addClass("active");
        $("#sidepic-tab a").append("<i class='icon-remove-circle'></i>");
        //聚焦第一个输入框
        $("#sortBy").focus();
        //为inputForm注册validate函数
        $("#inputForm").validate();
    });
</script>
</body>
</html>
