<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>ȸ�� ����</title></head>
    <body>
        <jsp:useBean class="mall.PersonalInfo" id="pinfo" />
        <jsp:setProperty name="pinfo" property="name" value="�迬��" />
        <jsp:setProperty name="pinfo" property="gender" value="��" />
        <jsp:setProperty name="pinfo" property="age" value="29" />
        �̸� : <jsp:getProperty name="pinfo" property="name" /> <br>
        ���� : <jsp:getProperty name="pinfo" property="gender" /> <br>
        ���� : <jsp:getProperty name="pinfo" property="age" /> <br>
    </body>
</html>