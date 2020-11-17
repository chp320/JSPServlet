<%@page contentType="text/html; charset=euc-kr"%>
<html>
    <head><title>사칙 연산</title></head>
    <body>
        입력된 수 : <%= request.getParameter("num1") %>, <%= request.getParameter("num2") %> <br><br>
        덧셈의 결과는? <%= request.getAttribute("SUM") %> <br>
        뺄셈의 결과는? <%= request.getAttribute("DIFFERENCE") %> <br>
        곱셈의 결과는? <%= request.getAttribute("PRODUCT") %> <br>
        나눗셈의 결과는? <%= request.getAttribute("QUOTIENT") %> <br>
    </body>
</html>