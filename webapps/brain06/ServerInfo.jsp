<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>웹 서버의 정보</title></head>
    <body>
        웹 서버의 종류: <%= application.getServerInfo() %> <br>
        지원하는 서블릿 버전: <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %> <br>
    </body>
</html>