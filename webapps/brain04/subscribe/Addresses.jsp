<%@page contentType="text/html; charset=euc-kr"%>
<%
    // PersonalInfo.html���� �Էµ� ���� ������ ���ǿ� ����
    request.setCharacterEncoding("euc-kr") ;
    String id = request.getParameter("ID") ;
    String password = request.getParameter("PASSWORD") ;
    String name = request.getParameter("NAME") ;
    
    session.setAttribute("ID", id) ;
    session.setAttribute("PASSWORD", password) ;
    session.setAttribute("NAME", name) ;
%>

<html>
    <head><title>ȸ�� ����</title></head>
    <body>
        <h3>����ó�� �Է��Ͻʽÿ�.</h3>
        <form action=Agreement.jsp method=post>
            �ּ�: <input type=text name=ADDRESS> <br>
            ��ȭ��ȣ: <input type=text name=PHONE> <br>
            �̸���: <input type=text name=EMAIL> <br>
            <input type=submit value="Ȯ��">
        </form>
    </body>
</html>
