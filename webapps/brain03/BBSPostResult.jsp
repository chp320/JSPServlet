<%@page contentType="text/html; charset=euc-kr"%>
<html>
    <head><title>게시판 글쓰기 - 결과 화면</title></head>
    <body>
        <h2>글쓰기</h2>
        <%
            String str = request.getParameter("RESULT") ;   // 실행 결과를 가져옴
            if (str.equals("SUCCESS"))
                out.println("저장되었습니다.") ;
            else
                out.println("파일에 데이터를 쓸 수 없습니다.") ;
        %>
    </body>
</html>