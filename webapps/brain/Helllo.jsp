<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>인사하기</title></head>
    <body>
        안녕하세요, <%= request.getParameter("NAME") %> 님
        <% application.log("[인사하기] JSP 페이지가 호출되었습니다. ") ; %>
    </body>
</html>