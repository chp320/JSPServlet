<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util" %>

<html>
    <head><title>최대값 구하기</title></head>
    <body>
        <h3>최대값 구하기</h3>
        <util:newMax var="MAX" num1="${param.NUM1}" num2="${param.NUM2}" />
        최대값: ${MAX}
    </body>
</html>