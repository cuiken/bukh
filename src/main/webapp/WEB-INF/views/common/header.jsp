<%@ page contentType="text/html;charset=UTF-8" %>

<div id="Top">
    <div id="Logo">
        <a href=""><img src="${ctx}/static/images/logo.png" alt=""></a>
    </div>
    <div id="QuickNavigation">
        <div id="Language">
                <span id="language-uk">
                    <a href="?locale=en"><img src="${ctx}/static/images/uk.png"></a>
                </span>
        </div>
        <div class="usermenu">
            <ul>
                <li><a href="${ctx}/login">登录</a></li>
            </ul>
        </div>
    </div>
    <div id="Navigation">
        <ul>
            <li id="Li_CatItem1_uk" class="current">
                <a href="${ctx}" class="active"><span><spring:message code="nav.home"/> </span></a>
            </li>
            <li><a href="${ctx}/profil"><span><spring:message code="nav.bukh"/> </span></a></li>
            <li><a href="${ctx}/products"><span><spring:message code="nav.products"/> </a></li>
            <li><a href="${ctx}/callesen-diesel"><span><spring:message code="nav.callesen_diesel"/> </span></a></li>
            <li><a href="${ctx}/distributors"><span><spring:message code="nav.distributors"/> </span></a></li>
            <li><a href="${ctx}/contact"><span><spring:message code="nav.contact"></spring:message> </span></a></li>
        </ul>
    </div>
</div>