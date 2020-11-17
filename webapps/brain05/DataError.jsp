<%@page contentType="text/html; charset=euc-kr"
        isErrorPage="true" %>
<% response.setStatus(200) ; %>
<html>
    <head><title>덧셈 프로그램 - 에러 화면</title></head>
    <body>
        잘못된 데이터가 입력되었습니다. <br><br>
        상세 에러 메시지: <%= exception.getMessage() %>
    </body>
</html>