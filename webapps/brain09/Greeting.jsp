<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head><title>�λ��ϱ�</title></head>
    <body>
        <c:choose>
            <c:when test="${param.NUM == 0}">
                ó�� �˰ڽ��ϴ�. <br>
            </c:when>
            <c:when test="${param.NUM == 1}">
                �ݰ����ϴ�. <br>
            </c:when>
            <c:otherwise>
                �ȳ��ϼ���. <br>
            </c:otherwise>
        </c:choose>
    </body>
</html>