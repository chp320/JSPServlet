<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="m" uri="/math-functions.tld" %>

<html>
    <head><title>�־��� ������ �� ���ϱ�</title></head>
    <body>
        ${param.NUM1} ���� ${param.NUM2} ������ ����? <br><br>
        ��: ${m:total(param.NUM1, param.NUM2)}
    </body>
</html>