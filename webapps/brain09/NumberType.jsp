<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <head><title>숫자 포맷</title></head>
    <body>
        금액: <fmt:formatNumber value="2500000" type="currency" currencySymbol="$" /> <br>
        퍼센트: <fmt:formatNumber value="0.5" type="percent" />
    </body>
</html>