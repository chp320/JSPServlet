<%@page contentType="text/html; charset=euc-kr"%>
<html>
    <head><title>���� �����͸� �д� jsp ������</title></head>
    <body>
        �̸�: <%= session.getAttribute("NAME") %> <br>
        ����: <%= session.getAttribute("AGE") %> <br>
        ����: <%= session.getAttribute("GENDER") %> 
    </body>
</html>