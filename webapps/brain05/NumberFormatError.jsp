<%@page contentType="text/html; charset=euc-kr" isErrorPage="true" %>
<% response.setStatus(200) ; %>

<html>
    <head><title>���� ���� ����</title></head>
    <body>
        ���� ������ �߸��Ǿ����ϴ�. <br><br>
        �� ���� �޽��� : <%= exception.getMessage() %>
    </body>
</html>
