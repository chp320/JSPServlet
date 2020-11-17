<%@page contentType="text/html; charset=euc-kr" %>
<%
    String name = request.getParameter("NAME") ;
    application.setAttribute("NAME", name) ;
%>

<html>
    <head><title>웹 애플리케이션 데이터 저장하기</title></head>
    <body>
        NAME 데이터가 저장되었습니다.
    </body>
</html>
