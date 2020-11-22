<%@page contentType="text/html; charset=utf-8" %>
<%
    request.setAttribute("ID", "Spiderman") ;
    request.setAttribute("VNUM", new Integer(3)) ;
%>
<jsp:forward page="WelcomeView.jsp" />