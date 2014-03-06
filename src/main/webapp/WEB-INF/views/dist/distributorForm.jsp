<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springside.org.cn/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>分销商管理</title>
</head>

<body>
<form id="inputForm" action="${ctx}/admin/distributor/${action}" method="post" class="form-horizontal">
    <input type="hidden" name="id" value="${dist.id}"/>
    <fieldset>
        <legend>
            <small>分销商管理</small>
        </legend>
        <div class="control-group">
            <label class="control-label">名称:</label>

            <div class="controls">
                <input type="text" id="name" name="name" value="${dist.name}" class="input-large required"
                       minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">省份:</label>

            <div class="controls">
                <input type="text" id="province" name="province" value="${dist.province}" class="input-large required"
                       minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">邮编:</label>

            <div class="controls">
                <input type="text" id="zipCode" name="zipCode" value="${dist.zipCode}" class="input-large required number"
                       minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">详细地址:</label>

            <div class="controls">
                <input type="text" id="address" name="address" value="${dist.address}" class="input-large required"
                       minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">电话:</label>

            <div class="controls">
                <input type="text" id="telephone" name="telephone" value="${dist.telephone}" class="input-large required"
                       minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">传真:</label>

            <div class="controls">
                <input type="text" id="fax" name="fax" value="${dist.fax}" class="input-large" minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">邮箱:</label>

            <div class="controls">
                <input type="text" id="email" name="email" value="${dist.email}" class="input-large email" minlength="3"/>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">网址:</label>

            <div class="controls">
                <input type="text" id="website" name="website" value="${dist.website}" class="input-large url" minlength="3"/>
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
        $("#distributor-tab").addClass("active");
        $("#distributor-tab a").append("<i class='icon-remove-circle'></i>");
        //聚焦第一个输入框
        $("#name").focus();
        //为inputForm注册validate函数
        $("#inputForm").validate();
    });
</script>
</body>
</html>
