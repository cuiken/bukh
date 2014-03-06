<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div id="leftbar" class="well span3" style="padding: 8px 0;margin-top: 15px;height: 510px;">
    <ul class="nav nav-list">
        <li class="nav-header"><i class="icon-cog"></i>系统管理</li>
        <li id="account-tab"><a href="${ctx}/admin/user/">帐号管理</a></li>

        <li class="nav-header"><i class="icon-book"></i>内容管理</li>

        <li id="pic-tab"><a href="${ctx}/admin/carousel">首页轮播图片</a></li>
        <li id="sidepic-tab"><a href="${ctx}/admin/side_pic">首页导航图片</a></li>
        <li id="category-tab"><a href="${ctx}/admin/category">产品分类</a></li>
        <li id="item-tab"><a href="${ctx}/admin/item">产品管理</a></li>

        <li class="nav-header"><i class="icon-book"></i>基础数据管理</li>
        <li id="region-tab"><a href="${ctx}/admin/region">区域管理</a></li>
        <li id="country-tab"><a href="${ctx}/admin/country">国家管理</a></li>
        <li id="distributor-tab"><a href="${ctx}/admin/distributor">分销商管理</a></li>
    </ul>
</div>