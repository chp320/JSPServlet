import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class ServerInfoServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) throws IOException, ServletException {
        ServletContext context = getServletContext() ;
        String serverInfo = context.getServerInfo() ;
        int majorVersion = context.getMajorVersion() ;
        int minorVersion = context.getMinorVersion() ;
        
        response.setContentType("text/html; charset=euc-kr") ;
        
        PrintWriter out = response.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>�� ������ ����</title></head>") ;
        out.println("<body>") ;
        out.printf("�� ������ ����: %s <br>", serverInfo) ;
        out.printf("�����ϴ� ���� ����: %d.%d <br>", majorVersion, minorVersion) ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}
