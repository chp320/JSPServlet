<%@page contentType="text/html; charset=euc-kr" import="java.io.*, java.util.*" %>
<%!
    private PrintWriter logFile ;
    public void jspInit() {
        String filename = "c:\\data\\datetime_log.txt" ;
        try {
            logFile = new PrintWriter(new FileWriter(filename, true)) ;
        }
        catch (IOException e) {
            System.out.printf("%TT - %s ������ �� �� �����ϴ�. %n", new GregorianCalendar(), filename) ;
        }
    }
%>

<html>
    <head><title>������ ��¥�� �ð�</title></head>
    <body>
    <%
        GregorianCalendar now = new GregorianCalendar() ;
        String date = String.format("���� ��¥: %TY�� %Tm�� %Te��", now, now, now) ;
        String time = String.format("���� �ð�: %TI�� %Tm�� %TS��", now, now, now) ;
        out.println(date + "<br>") ;
        out.println(time + "<br>") ;
        if (logFile != null)
            logFile.printf("%TF %TT�� ȣ��Ǿ����ϴ�. %n", now, now) ;
    %>
    </body>
</html>

<%!
    public void jspDestroy() {
        if (logFile != null)
            logFile.close() ;
    }
%>
