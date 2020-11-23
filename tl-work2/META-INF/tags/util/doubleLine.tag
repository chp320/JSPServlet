<%@tag body-content="empty" %>
<%@tag dynamic-attributes="attrs" %>
<font color="${attrs.color}" >
<%
    // 커스텀 액션의 애트리뷰트를 담고 있는 MAp 객체 가져오기
    // 태그 파일에 전달된 page 데이터 영역에서 jspContext 내장 변수의 
    // getAttribute 메서드로 Map 객체의 대표 이름으로 객체를 가져옴
    java.util.Map attrs = (java.util.Map) jspContext.getAttribute("attrs") ;

    String str = (String) attrs.get("size") ;
    int size = Integer.parseInt(str) ;

    for(int cnt=0; cnt<size; cnt++)
        out.print("=") ;
%>
</font> <br>