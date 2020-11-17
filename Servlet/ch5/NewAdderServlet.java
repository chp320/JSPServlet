import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class NewAdderServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) throws IOException, ServletException {
        try {
            String str1 = request.getParameter("NUM1") ;
            String str2 = request.getParameter("NUM2") ;
            int num1 = Integer.parseInt(str1) ;
            int num2 = Integer.parseInt(str2) ;
            int result = num1 + num2 ;
            
            response.setContentType("text/html; charset=euc-kr") ;
            PrintWriter out = response.getWriter() ;
            out.println("<html>") ;
            out.println("<head><title>µ¡¼À ÇÁ·Î±×·¥</title></head>") ;
            out.println("<body>") ;
            out.printf("%d + %d = %d", num1, num2, result) ;
            out.println("</body>") ;
            out.println("</html>") ;
        }
        catch (NumberFormatException e) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("data-error") ;
            dispatcher.forward(request, response) ;
        }
    }
}
