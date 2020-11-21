<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.TimeZone" %>

<!-- fmt:timeZone에 사용되는 지역 이름 확인 -->
<html>
    <head><title>시간대 ID 목록</title></head>
    <body>
        <%
            String arr[] = TimeZone.getAvailableIDs() ;
            for(int cnt=0; cnt<arr.length; cnt++) 
                out.println(arr[cnt] + "<br>") ;
        %>
    </body>
</html>