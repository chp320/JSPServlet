import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class PersonalInfoServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.setCharacterEncoding("euc-kr") ;
        String name = req.getParameter("name") ;
        String id = req.getParameter("id") ;
        String password = req.getParameter("password") ;
        String gender = req.getParameter("gender") ;
        // ������ư ó��
        if(gender.equals("male"))
            gender = "��" ;
        else
            gender = "��" ;
        // üũ�ڽ� ó�� - ������ ���� ������
        String inotice = req.getParameter("inotice") ;
        String cnotice = req.getParameter("cnotice") ;
        String dnotice = req.getParameter("dnotice") ;
        String job = req.getParameter("job") ;
        
        // response �� ����
        res.setContentType("text/html;charset=euc-kr") ;
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>���� ���� �Է� - ��� ȭ��</title></head>") ;
        out.println("<body>") ;
        out.println("<h2>���� ���� �Է�</h2>") ;
        out.printf("�̸�: %s <br>", name) ;
        out.printf("���̵�: %s <br>", id) ;
        out.printf("��ȣ: %s <br>", password) ;
        out.printf("����: %s <br>", gender) ;
        out.printf("���� ����: %s <br>", noticeToHangul(inotice)) ;
        out.printf("���� ����: %s <br>", noticeToHangul(cnotice)) ;
        out.printf("��� Ȯ�� ����: %s <br>", noticeToHangul(dnotice)) ;
        out.printf("����: %s <br>", job) ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
    
    private String noticeToHangul(String notice) {
        if(notice == null)
            return "���� ����" ;
        else if(notice.equals("on"))
            return "����" ;
        else
            return notice ;
    }
}
