<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head><title>�޾Ƹ�</title></head>
    <body>
        <c:forEach var="cnt" begin="1" end="5" >
            <font size=${cnt}>��~ȣ~ </font> <br>
        </c:forEach>
    </body>
</html>