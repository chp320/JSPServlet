import javax.servlet.* ;
import javax.servlet.http.* ;
import java.io.* ;

public class ResultServlet extends HttpServlet {
    public void doGet(HttpServletRequest req,
                      HttpServletResponse res) throws IOException, ServletException {
        /* 세션에 저장된 FOOD 값 추출 */
        HttpSession session = req.getSession() ;    // 세션을 시작하는 메서드
        String food = (String)session.getAttribute("FOOD") ;
        /* 파라미터로 전달된 ANIMAL 값 추출 */
        String animal = req.getParameter("ANIMAL") ;
        // 세션의 최대 비활성 기간 확인
        int timeout = session.getMaxInactiveInterval() ;
        
        // 세션에 FOOD, ANIMAL 저장
        session.setAttribute("FOOD", food) ;
        session.setAttribute("ANIMAL", animal) ;
        
        food = (String)session.getAttribute("FOOD") ;
        animal = (String)session.getAttribute("ANIMAL") ;
        
        // 세션의 최대 비활성 기간 수정
        session.setMaxInactiveInterval(5) ;
        int timeout2 = session.getMaxInactiveInterval() ;
        
        session.invalidate() ;  // 세션을 끝내는 메서드
        
        // response 값 설정
        res.setContentType("text/html; charset=euc-kr") ;
        
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>성격 테스트</title></head>") ;
        out.println("<body>") ;
        out.println("<h3>성격 테스트</h3>") ;
        out.printf("당신은 %s와 %s를 좋아하는 성격입니다.", food, animal) ;
        out.println("<br><br>") ;
        out.printf("세션 최대 비활성화 기간: %d", timeout) ;
        out.printf("세션 최대 비활성화 기간2: %d", timeout2) ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}