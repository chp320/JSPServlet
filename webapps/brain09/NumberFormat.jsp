<%@page contentType="text/html; charset=utf-8" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
    <head><title>숫자 포맷</title></head>
    <body>
        첫번째 수 : <fmt:formatNumber value="1234500" groupingUsed="true" /> <br>
        두번째 수 : <fmt:formatNumber value="3.14158" pattern="#.##" /> <br>
        세번째 수 : <fmt:formatNumber value="10.5" pattern="#.00" />
    </body>
</html>