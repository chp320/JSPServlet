<%@page contentType="text/html; charset=euc-kr"%>
<%
    response.addCookie(new Cookie("NAME", "John"));
    response.addCookie(new Cookie("GENDER", "Male"));
    response.addCookie(new Cookie("AGE", "15"));
%>

<html>
    <head><title>��Ű ������ �����ϱ�</title></head>
    <body>
        ��Ű �����Ͱ� ����Ǿ����ϴ�. <br><br>
    </body>
</html>
