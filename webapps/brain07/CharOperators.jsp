<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>�ͽ������� ��� ������ ����</title></head>
    <body>
        ${param.NUM1}�� ${param.NUM2}�� ���� ����? ${param.NUM1 div param.NUM2} <br>
        ��������? ${param.NUM1 mod param.NUM2} <br>
        �� �� ����Դϱ�? ${ (param.NUM1 gt 0) and (param.NUM2 gt 0) } <br>
        �� �� �����Դϱ�? ${ (param.NUM1 lt 0) and (param.NUM2 lt 0) } <br>
    </body>
</html>
