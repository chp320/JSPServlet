<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="euc-kr" />
<fmt:bundle basename="Welcome">
    <fmt:message var="title" key="TITLE" />
    <fmt:message var="greeting" key="GREETING">
        <fmt:param>${ID}</fmt:param>
        <fmt:param>${VNUM}</fmt:param>
    </fmt:message>
    <fmt:message var="body" key="BODY" />
    <fmt:message var="companyName" key="COMPANY_NAME" />
</fmt:bundle>

<html>
    <head>
        <meta http-equiv="ContentType" content="text/html; charset=utf-8">
        <title>${title}</title>
    </head>
    <body>
        ${greeting} <br><br>
        ${body} <br><br>
        <font size=2>${companyName}</font>
    </body>
</html>