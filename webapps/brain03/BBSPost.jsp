<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.io.*, java.util.Date"%>
<html>
    <head><title>게시판 글쓰기 - 결과 화면</title></head>
    <body>
        <h2>글쓰기</h2>
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
                String filePath = application.getRealPath("/WEB-INF/bbs/" + filename) ; // 지정한 경로의 절대경로를 출력
                //out.println("filePath: " + filePath) ;
                // C:\tomcat9\webapps\brain03\WEB-INF\bbs\1603009674631.txt
                writer = new PrintWriter(filePath) ;
                writer.printf("제목: %s %n", title) ;
                writer.printf("글쓴이: %s %n", name) ;
                writer.println(content) ;
                out.println("저장되었습니다.") ;
            }
            catch (IOException ioe) {
                out.println("파일에 데이터를 쓸 수 없습니다.") ;
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