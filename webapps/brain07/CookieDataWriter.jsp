<%-- ��Ű �����͸� �����ϴ� jsp ������ --%>
<%@page contentType="text/html; charset=euc-kr" %>
<%
    Cookie cookie = new Cookie("NAME", "John") ;
    response.addCookie(cookie) ;
%>

<html>
    <head><title>��Ű ������ ���� ���α׷�</title></head>
    <body>
        ��Ű ���� �����Ǿ����ϴ�.
    </body>
</html>