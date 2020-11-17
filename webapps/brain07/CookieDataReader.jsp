<%-- 쿠키 데이터 값을 출력하는 jsp 페이지 --%>
<%@page contentType="text/html; charset=euc-kr" %>
<html>
    <head><title>쿠키 데이터 출력 프로그램</title></head>
    <body>
        NAME 쿠키 데이터의 값은? ${cookie.NAME.value}
    </body>
</html>