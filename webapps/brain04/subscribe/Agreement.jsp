<%@page contentType="text/html; charset=euc-kr"%>
<%
    /*
    request.setCharacterEncoding("euc-kr") ;
    String id = request.getParameter("ID") ;
    String password = request.getParameter("PASSWORD") ;
    String name = request.getParameter("NAME") ;
    
    // 세션 데이터를 저장
    session.setAttribute("ID", id) ;
    session.setAttribute("PASSWORD", password) ;
    session.setAttribute("NAME", name) ;
    */
    // Addresses.jsp에서 전달된 데이터 처리
    request.setCharacterEncoding("euc-kr") ;
    String address = request.getParameter("ADDRESS") ;
    String phone = request.getParameter("PHONE") ;
    String email = request.getParameter("EMAIL") ;
    
    // 세션에 데이터 저장
    session.setAttribute("ADDRESS", address) ;
    session.setAttribute("PHONE", phone) ;
    session.setAttribute("EMAIL", email) ;
%>

<html>
    <head><title>회원 가입</title><head>
    <body>
        <h3>약관</h3>
        ------------------------------------------------------------------------<br>
        1. 회원 정보는 웹 사이트의 운영을 위해서만 사용됩니다. <br>
        2. 웹 사이트의 정상 운영을 방해하는 회원은 탈퇴 처리합니다. <br>
        ------------------------------------------------------------------------<br>
        <form action=Subscribe.jsp method=post>
            위의 약관에 동의하십니까?
            <input type=radio name=AGREE value=YES>동의함
            <input type=radio name=AGREE value=NO>동의하지 않음 <br><br>
            <input type=submit value="확인">
        </form>
    </body>
</html>