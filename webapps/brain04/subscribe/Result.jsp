<%@page contentType="text/html; charset=euc-kr"%>
<% String result = request.getParameter("RESULT") ; %>

<html>
    <head><title>ȸ������</title></head>
    <body>
        <h3>ȸ�� ���� ���</h3>
        <%
            if(result.equals("SUCCESS"))
                out.println("���ԵǾ����ϴ�.") ;
            else
                out.println("���Ե��� �ʾҽ��ϴ�.") ;
        %>
    </body>
</html>
