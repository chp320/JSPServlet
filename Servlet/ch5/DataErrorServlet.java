import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class DataErrorServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html; charset=euc-kr") ;
        PrintWriter out = response.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>���� ���α׷� - ���� ȭ��</title></head>") ;
        out.println("<body>") ;
        out.println("�߸��� �����Ͱ� �ԷµǾ����ϴ�.") ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}