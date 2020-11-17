<%@page contentType="text/html; charset=euc-kr"%>
<%@page import="java.io.*"%>
<%
    String agree = request.getParameter("AGREE") ;
    String result = null ;
    if(agree.equals("YES")) {
        // 동의한 경우 세션에 저장된 데이터를 내부 변수에 저장
        // getAttribute의 리턴 타입은 Object이므로 캐스트 연산 필요
        String id = (String)session.getAttribute("ID") ;
        String password = (String)session.getAttribute("PASSWORD") ;
        String name = (String)session.getAttribute("NAME") ;
        
        // Addresses.jsp 에서 전달된 연락처 정보도 내부 변수에 저장
        String address = (String)session.getAttribute("ADDRESS") ;
        String phone = (String)session.getAttribute("PHONE") ;
        String email = (String)session.getAttribute("EMAIL") ;
        
        PrintWriter writer = null ;
        try {
            // application 내장변수 : 웹 어플리케이션에 관련된 여러 기능을 제공
            // getRealPath: 웹 어플리케이션 내에서의 파일 경로명을 파일시스템 전체에서의 절대 경로명으로 변경
            //              매개변수로 전달된 값이 위치한 경로의 전체 경로명을 반환
            String filePath = application.getRealPath("/WEB-INF/" + id + ".txt") ;
            writer = new PrintWriter(filePath) ;
            writer.println("아이디: " + id) ;
            writer.println("패스워드: " + password) ;
            writer.println("이름: " + name) ;
            // Addresses.jsp 에서 전달된 연락처 정보도 함께 저장
            writer.println("주소: " + address) ;
            writer.println("전화번호: " + phone) ;
            writer.println("이메일: " + email) ;
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
    }
    else {
        result = "FAIL" ;
    }
    // 세션 종료
    session.invalidate() ;
    // sendRedirect : 현재 실행 중인 jsp페이지의 실행을 중단하고 다른 웹 자원이 대신 호출되도록 만드는 기능
    //                즉, 현 Subscribe.jsp를 종료하고 result값을 매개변수로 Result.jsp를 호출
    response.sendRedirect("Result.jsp?RESULT=" + result) ;
%>