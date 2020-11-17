import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class DataErrorServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html; charset=euc-kr") ;
        PrintWriter out = response.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>덧셈 프로그램 - 에러 화면</title></head>") ;
        out.println("<body>") ;
        out.println("잘못된 데이터가 입력되었습니다.") ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}