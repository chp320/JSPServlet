<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>웹 애플리케이션의 초기화 파라미터</title></head>
    <body>
        데이터베이스 이름: <%= application.getInitParameter("DB_NAME") %> <br>
    </body>
</html>