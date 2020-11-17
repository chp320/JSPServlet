<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head><title>구내 식당</title></head>
    <body>
        <h3>오늘의 점심 메뉴 입니다. </h3>
        <ul>
            <c:forEach var="dish" items="${MENU}">
                <li>${dish}</li>
            </c:forEach>
        </ul>
    </body>
</html>