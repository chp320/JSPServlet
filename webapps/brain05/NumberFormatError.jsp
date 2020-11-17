<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200) ; %>

<html>
    <head><title>숫자 포맷 에러</title></head>
    <body>
        숫자 포맷이 잘못되었습니다. <br><br>
        상세 에러 메시지 : <%= exception.getMessage() %>
    </body>
</html>
