<%@page contentType="text/html; charset=euc-kr"%>
<%
    /*
    request.setCharacterEncoding("euc-kr") ;
    String id = request.getParameter("ID") ;
    String password = request.getParameter("PASSWORD") ;
    String name = request.getParameter("NAME") ;
    
    // ���� �����͸� ����
    session.setAttribute("ID", id) ;
    session.setAttribute("PASSWORD", password) ;
    session.setAttribute("NAME", name) ;
    */
    // Addresses.jsp���� ���޵� ������ ó��
    request.setCharacterEncoding("euc-kr") ;
    String address = request.getParameter("ADDRESS") ;
    String phone = request.getParameter("PHONE") ;
    String email = request.getParameter("EMAIL") ;
    
    // ���ǿ� ������ ����
    session.setAttribute("ADDRESS", address) ;
    session.setAttribute("PHONE", phone) ;
    session.setAttribute("EMAIL", email) ;
%>

<html>
    <head><title>ȸ�� ����</title><head>
    <body>
        <h3>���</h3>
        ------------------------------------------------------------------------<br>
        1. ȸ�� ������ �� ����Ʈ�� ��� ���ؼ��� ���˴ϴ�. <br>
        2. �� ����Ʈ�� ���� ��� �����ϴ� ȸ���� Ż�� ó���մϴ�. <br>
        ------------------------------------------------------------------------<br>
        <form action=Subscribe.jsp method=post>
            ���� ����� �����Ͻʴϱ�?
            <input type=radio name=AGREE value=YES>������
            <input type=radio name=AGREE value=NO>�������� ���� <br><br>
            <input type=submit value="Ȯ��">
        </form>
    </body>
</html>