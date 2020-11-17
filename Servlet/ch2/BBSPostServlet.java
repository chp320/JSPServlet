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
        out.println("<head><title>게시판 글쓰기 - 결과 화면</title></head>") ;
        out.println("<body>") ;
        out.printf("이름: %s <br>", name) ;
        out.printf("제목: %s <br>", title) ;
        out.println("--------------------<br>") ;
        out.printf("<pre>%s</pre>", content) ;
        out.println("--------------------<br>") ;
        out.println("저장되었습니다.") ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}
