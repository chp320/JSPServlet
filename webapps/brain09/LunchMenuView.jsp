<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head><title>���� �Ĵ�</title></head>
    <body>
        <h3>������ ���� �޴� �Դϴ�. </h3>
        <ul>
            <c:forEach var="dish" items="${MENU}">
                <li>${dish}</li>
            </c:forEach>
        </ul>
    </body>
</html>