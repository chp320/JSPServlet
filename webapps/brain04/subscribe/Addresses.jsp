<%@page contentType="text/html; charset=euc-kr"%>
<%
    // PersonalInfo.html에서 입력된 개인 정보를 세션에 저장
    request.setCharacterEncoding("euc-kr") ;
    String id = request.getParameter("ID") ;
    String password = request.getParameter("PASSWORD") ;
    String name = request.getParameter("NAME") ;
    
    session.setAttribute("ID", id) ;
    session.setAttribute("PASSWORD", password) ;
    session.setAttribute("NAME", name) ;
%>

<html>
    <head><title>회원 가입</title></head>
    <body>
        <h3>연락처를 입력하십시오.</h3>
        <form action=Agreement.jsp method=post>
            주소: <input type=text name=ADDRESS> <br>
            전화번호: <input type=text name=PHONE> <br>
            이메일: <input type=text name=EMAIL> <br>
            <input type=submit value="확인">
        </form>
    </body>
</html>
