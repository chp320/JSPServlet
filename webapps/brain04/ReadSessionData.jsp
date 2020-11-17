<%@page contentType="text/html; charset=euc-kr"%>
<html>
    <head><title>세션 데이터를 읽는 jsp 페이지</title></head>
    <body>
        이름: <%= session.getAttribute("NAME") %> <br>
        나이: <%= session.getAttribute("AGE") %> <br>
        성별: <%= session.getAttribute("GENDER") %> 
    </body>
</html>