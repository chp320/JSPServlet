<%@page contentType="text/html; charset=euc-kr"%>
<% Cookie[] cookies = request.getCookies(); %>

<html>
    <head><title>��Ű ������ �б�</title></head>
    <body>
        �̸�: <%= getCookieValue(cookies, "NAME") %> <br>
        ����: <%= getCookieValue(cookies, "GENDER") %> <br>
        ����: <%= getCookieValue(cookies, "AGE") %>
    </body>
</html>

<%!
    private String getCookieValue(Cookie[] cookies, String name) {
        String value = null ;
        if(cookies == null)
            return null ;
        for(Cookie cookie : cookies) {
            if(cookie.getName().equals(name))
                return cookie.getValue() ;
        }
        return null ;
    }
%>