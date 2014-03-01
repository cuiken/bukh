<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springside.org.cn/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>产品管理</title>
</head>

<body>
<form id="inputForm" action="${ctx}/admin/item/${action}" method="post" enctype="multipart/form-data" class="form-horizontal">
    <input type="hidden" name="id" value="${item.id}"/>
    <fieldset>
        <legend><small>产品管理</small></legend>
        <div class="control-group">
            <label class="control-label">名称:</label>
            <div class="controls">
                <input type="text" id="name" name="name" value="${item.name}" class="input-large required" />
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">标题:</label>
            <div class="controls">
                <input type="text" id="title" name="title" value="${item.title}" class="input-large required"/>
            </div>
        </div>
        <div class="control-group">
            <label for="shortTitle" class="control-label">短标题:</label>
            <div class="controls">
               <input type="text" id="shortTitle" name="shortTitle" value="${item.shortTitle}" class="input-large required">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">产品型号:</label>
            <div class="controls">
                <form:bsradiobuttons path="item.category.id" items="${categories}" itemValue="id" itemLabel="name" labelCssClass="inline"/>
            </div>
        </div>
        <div class="control-group">
            <label for="item_content" class="control-label">产品描述:</label>
            <div class="controls">
                <textarea id="item_content" name="content" style="width:700px;height:400px;visibility:hidden;">${item.content}</textarea>
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">产品手册:</label>
            <div class="controls">
                <input type="file" name="files">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">技术图纸:</label>
            <div class="controls">
                <input type="file" name="files">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">扭矩曲线:</label>
            <div class="controls">
                <input type="file" name="files">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label">图片:</label>
            <div class="controls">
                <input type="file" name="files">
            </div>
        </div>

        <div class="form-actions">
            <input id="submit_btn" class="btn btn-primary" type="submit" value="提交"/>&nbsp;
            <input id="cancel_btn" class="btn" type="button" value="返回" onclick="history.back()"/>
        </div>
    </fieldset>
</form>

<script>
    $(document).ready(function() {

        var editor;
        KindEditor.ready(function(K) {
            editor = K.create('#item_content', {
                resizeType : 1,
                allowPreviewEmoticons : false,
                allowImageUpload : true,
                items : [
                    'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',
                    'removeformat', '|', 'justifyleft', 'justifycenter', 'justifyright', 'insertorderedlist',
                    'insertunorderedlist', '|', 'emoticons', 'image', 'link']
            });
        });


        $("#item-tab").addClass("active");
        $("#item-tab a").append("<i class='icon-remove-circle'></i>");
        //聚焦第一个输入框
        $("#name").focus();
        //为inputForm注册validate函数
        $("#inputForm").validate();
    });
</script>
</body>
</html>
