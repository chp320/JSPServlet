<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>ȸ�� ����</title></head>
    <body>
        <jsp:useBean class="mall.PersonalInfo" id="pinfo" />
        <jsp:setProperty name="pinfo" property="*" />
        �̸� : <jsp:getProperty name="pinfo" property="name" /> <br>
        ���� : <jsp:getProperty name="pinfo" property="gender" /> <br>
        ���� : <jsp:getProperty name="pinfo" property="age" />
    </body>
</html>