<%@page contentType="text/html; charset=euc-kr"%>
<%
    Cookie cookie = new Cookie("GENDER", "") ;
    cookie.setMaxAge(0) ;
    response.addCookie(cookie) ;
%>
<html>
    <head><title>쿠키 삭제하기</title></head>
    <body>
        GENDER 쿠키가 삭제되었습니다.
    </body>
</html>