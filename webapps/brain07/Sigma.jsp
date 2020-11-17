<%@page contentType="text/html; charset=euc-kr" %>
<%@taglib prefix="m" uri="/math-functions.tld" %>

<html>
    <head><title>주어진 범위의 합 구하기</title></head>
    <body>
        ${param.NUM1} 부터 ${param.NUM2} 까지의 합은? <br><br>
        답: ${m:total(param.NUM1, param.NUM2)}
    </body>
</html>