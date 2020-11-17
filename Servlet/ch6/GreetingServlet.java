import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;
import java.util.* ;

public class GreetingServlet extends HttpServlet {
    private PrintWriter logFile ;
    public void init() throws ServletException {
        String filename = getInitParameter("FILE_NAME") ;
        try {
//            logFile = new PrintWriter(new FileWriter("c:\\data\\log.txt", true)) ;
            logFile = new PrintWriter(new FileWriter(filename, true)) ;
        }
        catch (Exception e) {
            throw new ServletException(e) ;
        }
    }
    
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name") ;
        String greeting = "æ»≥Á«œººø‰, " + name + "¥‘." ;
        
        if(logFile != null) {
            GregorianCalendar now = new GregorianCalendar() ;
            logFile.printf("%TF %TT - %s %n", now, now, name) ;
        }
        
        response.setContentType("text/html; charset=euc-kr") ;
        PrintWriter out = response.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>¿ŒªÁ«œ±‚</title></head>") ;
        out.println("<body>") ;
        out.println(greeting) ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
    
    public void destroy() {
        if(logFile != null)
            logFile.close() ;
    }
}