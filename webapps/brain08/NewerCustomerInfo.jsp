<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>회원 정보</title></head>
    <body>
        <jsp:useBean class="mall.PersonalInfo" id="pinfo" />
        <jsp:setProperty name="pinfo" property="*" />
        이름 : <jsp:getProperty name="pinfo" property="name" /> <br>
        성별 : <jsp:getProperty name="pinfo" property="gender" /> <br>
        나이 : <jsp:getProperty name="pinfo" property="age" />
    </body>
</html>