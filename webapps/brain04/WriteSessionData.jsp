<%@page contentType="text/html; charset=euc-kr"%>
<%
    session.setAttribute("NAME", "������") ;
    session.setAttribute("AGE", new Integer(21)) ;
    session.setAttribute("GENDER", "��") ;
%>

<html>
    <head><title>���� �����͸� �����ϴ� jsp ������</title></head>
    <body>
        ���� �����Ͱ� ����Ǿ����ϴ�.<br><br>
        <a href=<%= response.encodeURL("ReadSessionData.jsp") %>>���� ������ �б�</a>
    </body>
</html>