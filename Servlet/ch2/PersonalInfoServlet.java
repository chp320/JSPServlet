import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class PersonalInfoServlet extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        req.setCharacterEncoding("euc-kr") ;
        String name = req.getParameter("name") ;
        String id = req.getParameter("id") ;
        String password = req.getParameter("password") ;
        String gender = req.getParameter("gender") ;
        // 라디오버튼 처리
        if(gender.equals("male"))
            gender = "남" ;
        else
            gender = "여" ;
        // 체크박스 처리 - 각각의 값을 가져옴
        String inotice = req.getParameter("inotice") ;
        String cnotice = req.getParameter("cnotice") ;
        String dnotice = req.getParameter("dnotice") ;
        String job = req.getParameter("job") ;
        
        // response 값 설정
        res.setContentType("text/html;charset=euc-kr") ;
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>개인 정보 입력 - 결과 화면</title></head>") ;
        out.println("<body>") ;
        out.println("<h2>개인 정보 입력</h2>") ;
        out.printf("이름: %s <br>", name) ;
        out.printf("아이디: %s <br>", id) ;
        out.printf("암호: %s <br>", password) ;
        out.printf("성별: %s <br>", gender) ;
        out.printf("공지 메일: %s <br>", noticeToHangul(inotice)) ;
        out.printf("광고 메일: %s <br>", noticeToHangul(cnotice)) ;
        out.printf("배송 확인 메일: %s <br>", noticeToHangul(dnotice)) ;
        out.printf("직업: %s <br>", job) ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
    
    private String noticeToHangul(String notice) {
        if(notice == null)
            return "받지 않음" ;
        else if(notice.equals("on"))
            return "받음" ;
        else
            return notice ;
    }
}
