<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.io.*"%>
<%
    String agree = request.getParameter("AGREE") ;
    String result = null ;
    if(agree.equals("YES")) {
        // ������ ��� ���ǿ� ����� �����͸� ���� ������ ����
        // getAttribute�� ���� Ÿ���� Object�̹Ƿ� ĳ��Ʈ ���� �ʿ�
        String id = (String)session.getAttribute("ID") ;
        String password = (String)session.getAttribute("PASSWORD") ;
        String name = (String)session.getAttribute("NAME") ;
        
        // Addresses.jsp ���� ���޵� ����ó ������ ���� ������ ����
        String address = (String)session.getAttribute("ADDRESS") ;
        String phone = (String)session.getAttribute("PHONE") ;
        String email = (String)session.getAttribute("EMAIL") ;
        
        PrintWriter writer = null ;
        try {
            // application ���庯�� : �� ���ø����̼ǿ� ���õ� ���� ����� ����
            // getRealPath: �� ���ø����̼� �������� ���� ��θ��� ���Ͻý��� ��ü������ ���� ��θ����� ����
            //              �Ű������� ���޵� ���� ��ġ�� ����� ��ü ��θ��� ��ȯ
            String filePath = application.getRealPath("/WEB-INF/" + id + ".txt") ;
            writer = new PrintWriter(filePath) ;
            writer.println("���̵�: " + id) ;
            writer.println("�н�����: " + password) ;
            writer.println("�̸�: " + name) ;
            // Addresses.jsp ���� ���޵� ����ó ������ �Բ� ����
            writer.println("�ּ�: " + address) ;
            writer.println("��ȭ��ȣ: " + phone) ;
            writer.println("�̸���: " + email) ;
            result = "SUCCESS" ;
        }
        catch (IOException ioe) {
            result = "FAIL" ;
        }
        finally {
            try {
                writer.close() ;
            }
            catch (Exception e) {
            }
        }
    }
    else {
        result = "FAIL" ;
    }
    // ���� ����
    session.invalidate() ;
    // sendRedirect : ���� ���� ���� jsp�������� ������ �ߴ��ϰ� �ٸ� �� �ڿ��� ��� ȣ��ǵ��� ����� ���
    //                ��, �� Subscribe.jsp�� �����ϰ� result���� �Ű������� Result.jsp�� ȣ��
    response.sendRedirect("Result.jsp?RESULT=" + result) ;
%>