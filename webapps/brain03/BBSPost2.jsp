<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.io.*, java.util.Date"%>
<%
    request.setCharacterEncoding("euc-kr") ;
    String name = request.getParameter("name") ;
    String title = request.getParameter("title") ;
    String content = request.getParameter("content") ;
    
    Date date = new Date() ;
    Long time = date.getTime() ;
    String filename = time + ".txt" ;
    
    String result ;
    PrintWriter writer = null ;
    
    try {
        // 지정된 경로의 절대경로를 출력
        String filePath = application.getRealPath("/WEB-INF/bbs/" + filename) ;
        writer = new PrintWriter(filePath) ;
        writer.printf("제목: %s %n", title) ;
        writer.printf("글쓴이: %s %n", name) ;
        writer.println(content) ;
        result = "SUCCESS" ;
    }
    catch (IOException ioe) {
        result = "FAIL" ;
    }
    finally {
        try {
            writer.close() ;
        }
        catch (Exception e) {
        }
    }
    response.sendRedirect("BBSPostResult.jsp?RESULT=" + result) ;
%>