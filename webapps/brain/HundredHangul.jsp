<%@page contentType="text/html; charset=euc-kr"%>
<html>
  <head>
  <title>Sum of 1 to 100</title>
  </head>
  
  <body>
    <%
        int total = 0 ;
        for (int cnt=1; cnt<=100; cnt++)
            total += cnt ;
    %>
    1부터 100까지 더한 값은? <%= total %>
  </body>
</html>