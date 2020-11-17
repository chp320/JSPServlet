<%@page contentType="text/html; charset=euc-kr"%>
<%
    session.setAttribute("NAME", "김지영") ;
    session.setAttribute("AGE", new Integer(21)) ;
    session.setAttribute("GENDER", "여") ;
%>

<html>
    <head><title>세션 데이터를 저장하는 jsp 페이지</title></head>
    <body>
        세션 데이터가 저장되었습니다.<br><br>
        <a href=<%= response.encodeURL("ReadSessionData.jsp") %>>세션 데이터 읽기</a>
    </body>
</html>