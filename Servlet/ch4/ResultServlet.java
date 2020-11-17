import javax.servlet.* ;
import javax.servlet.http.* ;
import java.io.* ;

public class ResultServlet extends HttpServlet {
    public void doGet(HttpServletRequest req,
                      HttpServletResponse res) throws IOException, ServletException {
        /* ���ǿ� ����� FOOD �� ���� */
        HttpSession session = req.getSession() ;    // ������ �����ϴ� �޼���
        String food = (String)session.getAttribute("FOOD") ;
        /* �Ķ���ͷ� ���޵� ANIMAL �� ���� */
        String animal = req.getParameter("ANIMAL") ;
        // ������ �ִ� ��Ȱ�� �Ⱓ Ȯ��
        int timeout = session.getMaxInactiveInterval() ;
        
        // ���ǿ� FOOD, ANIMAL ����
        session.setAttribute("FOOD", food) ;
        session.setAttribute("ANIMAL", animal) ;
        
        food = (String)session.getAttribute("FOOD") ;
        animal = (String)session.getAttribute("ANIMAL") ;
        
        // ������ �ִ� ��Ȱ�� �Ⱓ ����
        session.setMaxInactiveInterval(5) ;
        int timeout2 = session.getMaxInactiveInterval() ;
        
        session.invalidate() ;  // ������ ������ �޼���
        
        // response �� ����
        res.setContentType("text/html; charset=euc-kr") ;
        
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>���� �׽�Ʈ</title></head>") ;
        out.println("<body>") ;
        out.println("<h3>���� �׽�Ʈ</h3>") ;
        out.printf("����� %s�� %s�� �����ϴ� �����Դϴ�.", food, animal) ;
        out.println("<br><br>") ;
        out.printf("���� �ִ� ��Ȱ��ȭ �Ⱓ: %d", timeout) ;
        out.printf("���� �ִ� ��Ȱ��ȭ �Ⱓ2: %d", timeout2) ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}