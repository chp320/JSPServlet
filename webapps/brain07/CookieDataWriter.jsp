<%-- 쿠키 데이터를 저장하는 jsp 페이지 --%>
<%@page contentType="text/html; charset=euc-kr" %>
<%
    Cookie cookie = new Cookie("NAME", "John") ;
    response.addCookie(cookie) ;
%>

<html>
    <head><title>쿠키 데이터 저장 프로그램</title></head>
    <body>
        쿠키 값이 설정되었습니다.
    </body>
</html>