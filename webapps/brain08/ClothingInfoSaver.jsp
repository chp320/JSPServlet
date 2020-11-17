<%@page contentType="text/html; charset=euc-kr" %>

<jsp:useBean class="mall.ClothingInfo" id="pinfo" scope="request" />
<%-- ProductInfo 클래스 멤버변수 --%>
<jsp:setProperty name="pinfo" property="code" value="70002" />
<jsp:setProperty name="pinfo" property="name" value="반팔 티셔츠" />
<jsp:setProperty name="pinfo" property="price" value="15000" />
<%-- ClothingInfo 클래스 멤버변수 --%>
<jsp:setProperty name="pinfo" property="size" value="M" />
<jsp:setProperty name="pinfo" property="color" value="베이지" />

<html>
    <head><title>의류 정보 관리</title></head>
    <body>
        의류 정보가 저장되었습니다. <br>
        ------------------------------------------------<br>
        <h3>제품 개략 정보</h3>
        <jsp:include page="ProductInfo.jsp" />
    </body>
</html>