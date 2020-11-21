<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head><title>HTML 문법 설명</title></head>
    <body>
        <h3>FONT 태그에 대하여</h3>
        <c:out value="<FONT size=7>커다란 글씨</FONT>는 다음과 같은 출력을 합니다." /> <br><br>
        <c:out value="<FONT size=7>커다란 글씨</FONT>" escapeXml="false" />
    </body>
</html>