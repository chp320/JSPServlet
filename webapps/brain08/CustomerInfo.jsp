<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>회원 정보</title></head>
    <body>
        <jsp:useBean class="mall.PersonalInfo" id="pinfo" />
        <jsp:setProperty name="pinfo" property="name" value="김연희" />
        <jsp:setProperty name="pinfo" property="gender" value="여" />
        <jsp:setProperty name="pinfo" property="age" value="29" />
        이름 : <jsp:getProperty name="pinfo" property="name" /> <br>
        성별 : <jsp:getProperty name="pinfo" property="gender" /> <br>
        나이 : <jsp:getProperty name="pinfo" property="age" /> <br>
    </body>
</html>