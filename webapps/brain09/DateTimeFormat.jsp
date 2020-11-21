<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="date" value="<%= new Date() %>" />

<html>
    <head><title>현재의 시각</title></head>
    <body>
        [S] <fmt:formatDate value="${date}" type="both" dateStyle="short" timeStyle="short" /> <br>
        [M] <fmt:formatDate value="${date}" type="both" dateStyle="medium" timeStyle="medium" /> <br>
        [L] <fmt:formatDate value="${date}" type="both" dateStyle="long" timeStyle="long" /> <br>
        [F] <fmt:formatDate value="${date}" type="both" dateStyle="full" timeStyle="full" />
    </body>
</html>