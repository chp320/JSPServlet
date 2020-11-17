import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class AdderServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        String str1 = req.getParameter("num1") ;
        String str2 = req.getParameter("num2") ;
        int num1 = Integer.parseInt(str1) ;
        int num2 = Integer.parseInt(str2) ;
        int sum = num1 + num2 ;
        
        res.setContentType("text/html; charset=euc-kr") ;
        
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>µ¡¼À ÇÁ·Î±×·¥ - °á°ú È­¸é</title></head>") ;
        out.println("<body>") ;
        out.printf("%d + %d = %d", num1, num2, sum) ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}
