import javax.servlet.http.* ;
import javax.servlet.* ;
import java.io.* ;

public class HundredServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // 1���� 100���� ���� ���ϴ� ��ɹ�
        int total = 0 ;
        for (int cnt=1; cnt<=100; cnt++) {
            total += cnt ;
        }
        
        res.setContentType("text/html;charset=euc-kr") ;
        
        // ������� HTML�� ����� ���������� ����ϴ� ��ɹ�
        PrintWriter out = res.getWriter() ;
        out.println("<html>") ;
        out.println("<head><title>1���� 100���� ���ϴ� ����</title></head>") ;
        out.println("<body>") ;
        out.printf("1���� 100���� ���� = %d", total) ;
        out.println("</body>") ;
        out.println("</html>") ;
    }
}
