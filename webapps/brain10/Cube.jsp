<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="util" tagdir="/WEB-INF/tags/util" %>
<html>
    <head><title>세제곱표</title></head>
    <body>
        <h3>1부터 7까지의 제곱표</h3>
        <util:compute var="num" start="1" end="7">
            ${num}의 제곱은? ${num * num * num} <br>
        </util:compute>
    </body>
</html>