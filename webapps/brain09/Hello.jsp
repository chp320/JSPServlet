<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- c:out 커스텀 액션의 default 애트리뷰트 사용 예 -->
<html>
    <head><title>간단한 인산</title></head>
    <body>
        안녕하세요, <c:out value="${param.ID}" default="guest" />님
    </body>
</html>