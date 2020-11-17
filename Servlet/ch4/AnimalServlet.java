import javax.servlet.* ;
import javax.servlet.http.* ;
import java.io.* ;

public class AnimalServlet extends HttpServlet {
    public void doGet(HttpServletRequest req,
                      HttpServletResponse res)
                      throws IOException, ServletException {
        /* request에서 파라미터로 전달된 
           FOOD 값을 추출하여 세션에 저장 */
        String food = req.getParameter("FOOD") ;
        HttpSession session = req.getSession() ;
        session.setAttribute("FOOD", food) ;
        
        // response 값 설정
        res.setContentType("text/html; charset=euc-kr") ;
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>성격 테스트</title></head>") ;
        out.println("<body>") ;
        out.println("<h3>좋아하는 동물은?</h3>") ;
        out.println("<form action=result>") ;
        out.println("<input type=textfield name=ANIMAL>") ;
        out.println("<input type=submit value='확인'>") ;
        out.println("</form>") ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}