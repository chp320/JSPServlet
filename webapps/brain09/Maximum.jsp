<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head><title>�ִ밪 ���ϱ�</title></head>
    <body>
        �ִ밪:
        <c:if test="${param.NUM1 - param.NUM2 >= 0}">
            ${param.NUM1}
        </c:if>
        <c:if test="${param.NUM1 - param.NUM2 < 0}">
            ${param.NUM2}
        </c:if>
    </body>
</html>