<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8" />
<html>
    <head><title>인사하기</title></head>
    <body>
        안녕하세요, ${param.ID}님
    </body>
</html>