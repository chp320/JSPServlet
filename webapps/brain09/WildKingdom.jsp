<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head><title>������ �ձ�</title></head>
    <body>
        ������ ������ġ�� ���� �������? <br><br>
        <c:set var="guests" value="�䳢^^�ź���~�罿" />
        <c:forTokens var="animal" items="${guests}" delims="^~" >
            ${animal} <br>
        </c:forTokens>
    </body>
</html>