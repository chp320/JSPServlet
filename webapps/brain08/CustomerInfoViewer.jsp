<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>ȸ�� ����</title></head>
    <body>
        <jsp:useBean class="mall.PersonalInfo" id="pinfo" scope="request" />
        �̸� : <jsp:getProperty name="pinfo" property="name" /> <br>
        ���� : <jsp:getProperty name="pinfo" property="gender" /> <br>
        ���� : <jsp:getProperty name="pinfo" property="age" /> <br>
    </body>
</html>