<%@page contentType="text/html; charset=euc-kr"%>
<%
    Cookie cookie = new Cookie("GENDER", "") ;
    cookie.setMaxAge(0) ;
    response.addCookie(cookie) ;
%>
<html>
    <head><title>��Ű �����ϱ�</title></head>
    <body>
        GENDER ��Ű�� �����Ǿ����ϴ�.
    </body>
</html>