<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<div id="leftbar" class="span2">
	<h1>权限模块</h1>
	<div class="submenu">
		<a id="account-tab"href="${ctx}/admin/user/">帐号管理</a>
	</div>
	<h1>内容模块</h1>
	<div class="submenu">
		<a id="web-tab" href="${ctx}/story/web">轮播图片管理</a>
	</div>
</div>