<%@page contentType="text/html; charset=euc-kr" %>
<%
    int sum = 0 ;
    for (int cnt = 1 ; cnt <= 100 ; cnt++)
        sum += cnt ;
    pageContext.setAttribute("RESULT", new Integer(sum)) ;
%>
<html>
    <head><title>1부터 1000까지의 합</title></head>
    <body>
        1부터 1000까지 더한 결과는? ${RESULT}
    </body>
</html>