<%@page contentType="text/html; charset=euc-kr"%>
<%
    Cookie cookie = new Cookie("JOB", "programmer") ;
    cookie.setPath("/brain04/sub1/") ;
    response.addCookie(cookie) ;
%>
<html>
    <head><title>��Ű ������ �����ϱ�</title></head>
    <body>
        JOB ��Ű�� ����Ǿ����ϴ�. <br><br>
    </body>
</html>