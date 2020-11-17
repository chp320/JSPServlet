<%@page contentType="text/html; charset=euc-kr"%>
<%
    Cookie cookie = new Cookie("JOB", "programmer") ;
    cookie.setPath("/brain04/sub1/") ;
    response.addCookie(cookie) ;
%>
<html>
    <head><title>쿠키 데이터 저장하기</title></head>
    <body>
        JOB 쿠키가 저장되었습니다. <br><br>
    </body>
</html>