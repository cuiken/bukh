<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Distributors - BUKH</title>
    <link rel="stylesheet" href="${ctx}/static/styles/w_default.css">
    <link rel="stylesheet" href="${ctx}/static/styles/modules.css">
</head>
<body class="bodyCatId7 bodyPageId10  bodyPageTypeTekst">
<div id="Wrapper">
    <%@include file="common/header.jsp" %>
    <div id="InnerWrapper">
        <div id="ContentWrapper">
            <div id="ContentTop">

            </div>
            <div id="Content">
                <div id="LeftColumn">
                    <div id="Navigation_2nd">
                        <ul>
                            <li>
                                <a href="${ctx}/distributors">Distributors</a>
                            </li>
                            <c:forEach items="${regions}" var="region">
                                <li>
                                    <a href="${ctx}/distributors/#${region.name}">${region.name}</a>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                </div>

                <div id="MainContentWrapper" style="width: 680px;">
                    <div id="MainContentTop">
                    </div>
                    <div id="DestributersMainContent">
                        <h1>Distributors</h1>

                        <div id="WorldMap">
                            <img id="imagemap" src="${ctx}/static/images/map/map.png" width="693" height="339"
                                 alt="world" usemap="#worldmap"/>
                            <map name="worldmap">
                                <area class="area-northamerica" shape="polygon" coords="0,0,0,190,200,190,320,0"
                                      href="#North-America" alt="north america region results" title="North America"/>
                                <area class="area-southamerica" shape="polygon" coords="150,200,170,350,200,350,290,200"
                                      href="#South-America" alt="south america region results" title="South America"/>
                                <area class="area-europe" shape="polygon"
                                      coords="374,136,371,151,300,145,300,70,350,0,480,0,500,5,495,25,445,54,453,98,460,104,442,110,440,140,415,125,390,130"
                                      href="#Europe" alt="europe region results" title="Europe"/>
                                <area class="area-africa" shape="polygon"
                                      coords="290,150,290,300,450,300,430,195,420,195,400,180,390,160,390,150"
                                      href="#Africa" alt="africa region results" title="Africa"/>
                                <area class="area-asia" shape="polygon"
                                      coords="374,136,391,171,417,195,427,197,524,238,547,238,560,212,575,210,603,180,693,87,693,0,500,5,495,25,445,54,453,98,460,104,442,110,440,140,415,125,390,130"
                                      href="#Asia" alt="asia region results" title="Asia"/>
                                <area class="area-australia" shape="polygon" coords="544,237,535,314,681,321,653,200"
                                      href="#Australia" alt="australia region results" title="Australia"/>
                            </map>
                            </map>
                        </div>
                        <div id="WorldChooser">
                            Region:
                            <select class="WorldRegionPicker">
                                <option selected="selected">Choose region</option>
                                <option>North America</option>
                                <option>South America</option>
                                <option>Europe</option>
                                <option>Africa</option>
                                <option>Asia</option>
                                <option>Oceania</option>
                            </select>

                            Country:
                            <select class="WorldCountryPicker" disabled="disabled">
                                <option selected="selected">Choose country</option>
                                <option class="North-America">Canada</option>
                                <option class="North-America">USA</option>

                                <option class="South-America">Argentina</option>
                                <option class="South-America">Chile</option>
                                <option class="South-America">Ecuador</option>
                                <option class="South-America">Panama</option>
                                <option class="South-America">Peru</option>
                                <option class="South-America">Uruguay</option>

                                <option class="Europe">Denmark</option>
                                <option class="Europe">Sweden</option>
                                <option class="Europe">England</option>
                                <option class="Europe">Holland</option>
                                <option class="Europe">Greece</option>
                                <option class="Europe">Germany</option>
                                <option class="Europe">Iceland</option>
                                <option class="Europe">Lithuania</option>
                                <option class="Europe">Spain</option>
                                <option class="Europe">Portugal</option>
                                <option class="Europe">Poland</option>
                                <option class="Europe">Norway</option>
                                <option class="Europe">Malta</option>
                                <option class="Europe">Italy</option>
                                <option class="Europe">France</option>
                                <option class="Europe">Finland</option>
                                <option class="Europe">Faroe Islands</option>
                                <option class="Europe">Croatia</option>
                                <option class="Europe">Bulgaria</option>
                                <option class="Europe">Russia</option>

                                <option class="Africa">Egypt</option>
                                <option class="Africa">Mauritius</option>
                                <option class="Africa">Morocco</option>
                                <option class="Africa">Tunisia</option>
                                <option class="Africa">Trinidad and Tobago</option>
                                <option class="Africa">South Africa</option>

                                <option class="Asia">Bangladesh</option>
                                <option class="Asia">China</option>
                                <option class="Asia">Hongkong</option>
                                <option class="Asia">India</option>
                                <option class="Asia">Indonesia</option>
                                <option class="Asia">Japan</option>
                                <option class="Asia">Korea</option>
                                <option class="Asia">Macau</option>
                                <option class="Asia">Malaysia</option>
                                <option class="Asia">Sri Lanka</option>
                                <option class="Asia">Turkey</option>
                                <option class="Asia">Singapore</option>
                                <option class="Asia">Thailand</option>
                                <option class="Asia">United Arab Emirates</option>

                                <option class="Australia">Australia</option>
                                <option class="Australia">New Zealand</option>
                            </select>
                        </div>
                        <div id="WorldDestributers">
                            <ul>
                                <li>
                                    <div class="distributor-row-one">
                                        <span>Forwin Company Ltd, Qinhuangdao Office</span>

                                        <p>
                                            No 1-11, Nongken Building<br/>
                                            Shanhaiguan Development Zone<br/>
                                            Hebai 066206<br/>
                                            <span class="country">CHINA</span><br/>
                                            Tel: +86-335-5082-500<br/>
                                            Fax: +86-335-5085-036<br/>
                                            E-mail: <a href="mailto:forwin@heinfo.net">forwin@heinfo.net</a><br/>
                                            Website:
                                        </p>
                                    </div>
                                    <div class="distributor-row-one">
                                        <span></span>

                                        <p></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="MainContentBottom"></div>
                </div>
            </div>
            <div id="ContentBottom">

            </div>
        </div>
    </div>
</div>
<%@include file="common/footer.jsp" %>

<script type="text/javascript" src="${ctx}/static/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/map-hover.js"></script>
<script>
    $(function () {
        $("#nav-dist a").addClass("active");
    })
</script>
</body>
</html>