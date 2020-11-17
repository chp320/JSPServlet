import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class BBSPostServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        
        req.setCharacterEncoding("euc-kr") ;
        
        String name = req.getParameter("name") ;
        String title = req.getParameter("title") ;
        String content = req.getParameter("content") ;
        
        res.setContentType("text/html;charset=euc-kr") ;
        
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>�Խ��� �۾��� - ��� ȭ��</title></head>") ;
        out.println("<body>") ;
        out.printf("�̸�: %s <br>", name) ;
        out.printf("����: %s <br>", title) ;
        out.println("--------------------<br>") ;
        out.printf("<pre>%s</pre>", content) ;
        out.println("--------------------<br>") ;
        out.println("����Ǿ����ϴ�.") ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}
