<%@page contentType="text/html; charset=euc-kr"%>
<html>
    <head><title>��Ģ ����</title></head>
    <body>
        �Էµ� �� : <%= request.getParameter("num1") %>, <%= request.getParameter("num2") %> <br><br>
        ������ �����? <%= request.getAttribute("SUM") %> <br>
        ������ �����? <%= request.getAttribute("DIFFERENCE") %> <br>
        ������ �����? <%= request.getAttribute("PRODUCT") %> <br>
        �������� �����? <%= request.getAttribute("QUOTIENT") %> <br>
    </body>
</html>