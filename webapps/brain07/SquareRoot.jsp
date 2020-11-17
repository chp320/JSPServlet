<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="m" uri="http://hanb.co.kr/brain07/math-functions.tld" %>

<html>
    <head><title>제곱근 구하기</title></head>
    <body>
        ${param.NUM}의 제곱근은? ${m:squareroot(param.NUM)} <br>
    </body>
</html>