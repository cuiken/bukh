<%@ page contentType="text/html;charset=UTF-8" %>

<div id="Top">
    <div id="Logo">
        <a href="${ctx}"><img src="${ctx}/static/images/logo.png" alt=""></a>
    </div>
    <div id="QuickNavigation">
        <div id="Language">
                <span id="language-uk">
                    <a href="?locale=en"><img src="${ctx}/static/images/uk.png"></a>
                </span>
        </div>
        <div class="usermenu">
            <ul>
                <li><a href="${ctx}/login"><spring:message code="user.login"/> </a></li>
            </ul>
        </div>
    </div>
    <div id="Navigation">
        <ul>
            <li id="nav-home">
                <a href="${ctx}"><span><spring:message code="nav.home"/> </span></a>
            </li>
            <li id="nav-profil"><a href="${ctx}/profil"><span><spring:message code="nav.bukh"/> </span></a></li>
            <li id="nav-products"><a href="${ctx}/products"><span><spring:message code="nav.products"/> </a></li>
            <li id="nav-callesen"><a href="${ctx}/callesen-diesel"><span><spring:message code="nav.callesen_diesel"/> </span></a></li>
            <li id="nav-dist"><a href="${ctx}/distributors"><span><spring:message code="nav.distributors"/> </span></a></li>
            <li id="nav-contact"><a href="${ctx}/contact"><span><spring:message code="nav.contact"></spring:message> </span></a></li>
        </ul>
    </div>
</div>