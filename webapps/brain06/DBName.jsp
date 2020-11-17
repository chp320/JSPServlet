<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>초기화 파라미터 테스트</title></head>
    <body>
        <% String dbName = getInitParameter("DB_NAME") ; %>
        데이터베이스 이름: <%= dbName %> <br>
    </body>
</html>
