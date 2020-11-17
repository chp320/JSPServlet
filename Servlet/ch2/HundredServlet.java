import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class HundredServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // 1부터 100까지 합을 구하는 명령문
        int total = 0 ;
        for (int cnt=1; cnt<=100; cnt++) {
            total += cnt ;
        }
        
        res.setContentType("text/html;charset=euc-kr") ;
        
        // 계산결과를 HTML로 만들어 웹브라우저로 출력하는 명령문
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>1부터 100까지 더하는 서블릿</title></head>") ;
        out.println("<body>") ;
        out.printf("1부터 100까지 합은 = %d", total) ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}
