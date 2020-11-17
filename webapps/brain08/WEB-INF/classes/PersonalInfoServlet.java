/* 서블릿 클래스가 JSP 페이지로 자바빈 객체를 넘겨주는 예 */
package mall ;
import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class PersonalInfoServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response) throws IOException, ServletException {
        PersonalInfo obj = new PersonalInfo() ;
        obj.setName("이정호") ;
        obj.setGender('남') ;
        obj.setAge(24) ;
        request.setAttribute("pinfo", obj) ;
        RequestDispatcher dispatcher = request.getRequestDispatcher("CustomerInfoViewer.jsp") ;
        dispatcher.forward(request, response) ;
    }
}