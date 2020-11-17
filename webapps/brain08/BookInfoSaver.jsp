<%@page contentType="text/html; charset=euc-kr" %>

<jsp:useBean class="mall.BookInfo" id="pinfo" scope="request" />
<%-- ProductInfo 클래스의 멤버변수 --%>
<jsp:setProperty name="pinfo" property="code" value="50001" />
<jsp:setProperty name="pinfo" property="name" value="의뢰인" />
<jsp:setProperty name="pinfo" property="price" value="9000" />
<%-- BookInfo 클래스의 멤버변수 --%>
<jsp:setProperty name="pinfo" property="writer" value="존 그리샴" />
<jsp:setProperty name="pinfo" property="page" value="704" />

<html>
    <head><title>책 정보 관리</title></head>
    <body>
        책 정보가 저장되었습니다. <br>
        ------------------------------------------------<br>
        <h3>제품 개략 정보</h3>
        <jsp:include page="ProductInfo.jsp" />
    </body>
</html>