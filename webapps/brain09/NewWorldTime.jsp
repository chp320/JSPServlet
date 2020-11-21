<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />

<!-- fmt:setTimeZone 을 사용한 날짜/시각 출력 -->
<html>
    <head><title>세계시 프로그램</title></head>
    <body>
        서울: <fmt:formatDate value="${date}" type="both" /> <br>
        <fmt:setTimeZone value="Aisa/Hong_Kong" />
        홍콩: <fmt:formatDate value="${date}" type="both" /> <br>
        <fmt:setTimeZone value="Europe/London" />
        런던: <fmt:formatDate value="${date}" type="both" /> <br>
        <fmt:setTimeZone value="America/New_York" />
        뉴욕: <fmt:formatDate value="${date}" type="both" /> <br>
    </body>
</html>