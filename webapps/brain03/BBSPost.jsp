<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.io.*, java.util.Date"%>
<html>
    <head><title>�Խ��� �۾��� - ��� ȭ��</title></head>
    <body>
        <h2>�۾���</h2>
        <%
            request.setCharacterEncoding("euc-kr") ;
            String name = request.getParameter("name") ;
            String title = request.getParameter("title") ;
            String content = request.getParameter("content") ;
            
            Date date = new Date() ;
            Long time = date.getTime() ;
            //out.println("time: " + time) ;  // 1603009674631
            String filename = time + ".txt" ;
            //out.println("filename: " + filename) ;  // 1603009674631.txt
            
            PrintWriter writer = null ;
            try {
                String filePath = application.getRealPath("/WEB-INF/bbs/" + filename) ; // ������ ����� �����θ� ���
                //out.println("filePath: " + filePath) ;
                // C:\tomcat9\webapps\brain03\WEB-INF\bbs\1603009674631.txt
                writer = new PrintWriter(filePath) ;
                writer.printf("����: %s %n", title) ;
                writer.printf("�۾���: %s %n", name) ;
                writer.println(content) ;
                out.println("����Ǿ����ϴ�.") ;
            }
            catch (IOException ioe) {
                out.println("���Ͽ� �����͸� �� �� �����ϴ�.") ;
            }
            finally {
                try {
                    writer.close() ;
                }
                catch (Exception e) {
                }
            }
        %>
    </body>
</html>