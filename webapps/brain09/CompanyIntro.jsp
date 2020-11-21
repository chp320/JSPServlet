<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle basename="Intro" />

<html>
    <head><title><fmt:message key="TITLE" /></title></head>
    <body>
        <h3><fmt:message key="TITLE" /></h3>
        <fmt:message key="GREETING" /> <br><br>
        <fmt:message key="BODY" /> <br><br>
        <FONT size=2><fmt:message key="COMPANY_NAME" /></FONT>
    </body>
</html>