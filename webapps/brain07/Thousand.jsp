<%@page contentType="text/html; charset=euc-kr" %>
<%
    int sum = 0 ;
    for (int cnt = 1 ; cnt <= 100 ; cnt++)
        sum += cnt ;
    pageContext.setAttribute("RESULT", new Integer(sum)) ;
%>
<html>
    <head><title>1���� 1000������ ��</title></head>
    <body>
        1���� 1000���� ���� �����? ${RESULT}
    </body>
</html>