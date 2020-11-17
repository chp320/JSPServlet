<%@page contentType="text/html; charset=euc-kr" import="java.io.*, java.util.*" %>
<%!
    private PrintWriter logFile ;
    public void jspInit() {
        String filename = "c:\\data\\datetime_log.txt" ;
        try {
            logFile = new PrintWriter(new FileWriter(filename, true)) ;
        }
        catch (IOException e) {
            System.out.printf("%TT - %s 파일을 열 수 없습니다. %n", new GregorianCalendar(), filename) ;
        }
    }
%>

<html>
    <head><title>현재의 날짜와 시각</title></head>
    <body>
    <%
        GregorianCalendar now = new GregorianCalendar() ;
        String date = String.format("현재 날짜: %TY년 %Tm월 %Te일", now, now, now) ;
        String time = String.format("현재 시각: %TI시 %Tm분 %TS초", now, now, now) ;
        out.println(date + "<br>") ;
        out.println(time + "<br>") ;
        if (logFile != null)
            logFile.printf("%TF %TT에 호출되었습니다. %n", now, now) ;
    %>
    </body>
</html>

<%!
    public void jspDestroy() {
        if (logFile != null)
            logFile.close() ;
    }
%>
