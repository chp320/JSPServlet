<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>�� ������ ����</title></head>
    <body>
        �� ������ ����: <%= application.getServerInfo() %> <br>
        �����ϴ� ���� ����: <%= application.getMajorVersion() %>.<%= application.getMinorVersion() %> <br>
    </body>
</html>