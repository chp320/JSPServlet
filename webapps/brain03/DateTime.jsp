<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.util.GregorianCalendar"%>

<html>
    <head><title>날짜와 시각</title></head>
    <body>
        <%
            GregorianCalendar now = new GregorianCalendar() ;
            String date = String.format("%TF", now) ;
            String time = String.format("%TT", now) ;
        %>
        
        오늘의 날짜: <%= date %> <br>
        오늘의 시각: <%= time %> <br>
    </body>
</html>
