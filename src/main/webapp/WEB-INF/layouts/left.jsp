<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div id="leftbar" class="well span3" style="padding: 8px 0;margin-top: 15px;height: 510px;">
    <ul class="nav nav-list">
        <li class="nav-header"><i class="icon-cog"></i>系统管理</li>
        <li id="account-tab"><a href="${ctx}/admin/user/">帐号管理</a></li>

        <li class="nav-header"><i class="icon-book"></i>内容管理</li>

        <li id="pic-tab"><a href="${ctx}/admin/carousel">首页轮播图片管理</a></li>
        <li id="sidepic-tab"><a href="${ctx}/admin/side_pic">首页导航图片管理</a></li>
        <li id="category-tab"><a href="${ctx}/content/category">产品分类管理</a></li>
        <li id="item-tab"><a href="${ctx}/admin/item">产品管理</a></li>
    </ul>
</div>