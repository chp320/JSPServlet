<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />

<!-- fmt:timeZone을 사용한 세계 여러 도시 현재 시각 출력 -->
<html>
    <head><title>세계시간 프로그램</title></head>
    <body>
        서울: <fmt:formatDate value="${date}" type="both" /> <br>
        <fmt:timeZone value="Asia/Hong_Kong" >
            홍콩: <fmt:formatDate value="${date}" type="both" /> <br>
        </fmt:timeZone>
        <fmt:timeZone value="Europe/London" >
            런던: <fmt:formatDate value="${date}" type="both" /> <br>
        </fmt:timeZone>
        <fmt:timeZone value="America/New_York" >
            뉴욕: <fmt:formatDate value="${date}" type="both" /> <br>
        </fmt:timeZone>
    </body>
</html>