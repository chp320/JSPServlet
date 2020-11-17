<%@page contentType="text/html; charset=euc-kr" %>
<%
    String str1 = request.getParameter("NUM1") ;
    String str2 = request.getParameter("NUM2") ;
    int num1 = Integer.parseInt(str1) ;
    int num2 = Integer.parseInt(str2) ;
    int result = num1 / num2 ;
%>

<html>
    <head><title>³ª´°¼À ÇÁ·Î±×·¥</title></head>
    <body>
        <%= num1 %> / <%= num2 %> = <%= result %>
    </body>
</html>
