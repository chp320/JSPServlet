<%-- �ͽ������� ���(EL)�� ������ ��� �� --%>
<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>�ͽ������� ��� ������ ����</title></head>
    <body>
        X = ${param.NUM1}, Y = ${param.NUM2} <br><br>
        X + Y = ${param.NUM1 + param.NUM2} <br>
        X - Y = ${param.NUM1 - param.NUM2} <br>
        X * Y = ${param.NUM1 * param.NUM2} <br>
        X / Y = ${param.NUM1 / param.NUM2} <br>
        X % Y = ${param.NUM1 % param.NUM2} <br><br>
        
        X�� �� Ů�ϱ�? ${param.NUM1 - param.NUM2 > 0} <br>
        Y�� �� Ů�ϱ�? ${param.NUM1 - param.NUM2 < 0} <br><br>
        X�� Y�� ��� ����Դϱ�? ${(param.NUM1 > 0) && (param.NUM2 > 0)} <br><br>
        X�� Y�� �����ϱ�? ${param.NUM1 == param.NUM2? "��" : "�ƴϿ�"} <br><br>
    </body>
</html>