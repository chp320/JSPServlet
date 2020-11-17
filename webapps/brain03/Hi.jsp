<%@page contentType="text/html; charset=euc-kr"%>
<html>
    <head><title>인사하기</title></head>
    <body>
        안녕하세요, <%= request.getParameter("yourname") %>님
    </body>
</html>
