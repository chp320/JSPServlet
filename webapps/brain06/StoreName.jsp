<%@page contentType="text/html; charset=euc-kr" %>
<%
    String name = request.getParameter("NAME") ;
    application.setAttribute("NAME", name) ;
%>

<html>
    <head><title>�� ���ø����̼� ������ �����ϱ�</title></head>
    <body>
        NAME �����Ͱ� ����Ǿ����ϴ�.
    </body>
</html>
