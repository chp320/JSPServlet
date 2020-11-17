<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>엠프티 연산자</title></head>
    <body>
        안녕하세요, ${empty param.ID ? "guest" : param.ID}님
    </body>
</html>