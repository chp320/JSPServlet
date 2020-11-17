import javax.servlet.* ;
import javax.servlet.http.* ;
import java.io.* ;

public class AnimalServlet extends HttpServlet {
    public void doGet(HttpServletRequest req,
                      HttpServletResponse res)
                      throws IOException, ServletException {
        /* request���� �Ķ���ͷ� ���޵� 
           FOOD ���� �����Ͽ� ���ǿ� ���� */
        String food = req.getParameter("FOOD") ;
        HttpSession session = req.getSession() ;
        session.setAttribute("FOOD", food) ;
        
        // response �� ����
        res.setContentType("text/html; charset=euc-kr") ;
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>���� �׽�Ʈ</title></head>") ;
        out.println("<body>") ;
        out.println("<h3>�����ϴ� ������?</h3>") ;
        out.println("<form action=result>") ;
        out.println("<input type=textfield name=ANIMAL>") ;
        out.println("<input type=submit value='Ȯ��'>") ;
        out.println("</form>") ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}