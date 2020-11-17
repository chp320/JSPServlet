<%@page contentType="text/html; charset=euc-kr" %>

<jsp:useBean class="mall.ProductInfo" id="pinfo" scope="request" />
코드 : <jsp:getProperty name="pinfo" property="code" /> <br>
제품명 : <jsp:getProperty name="pinfo" property="name" /> <br>
가격 : <jsp:getProperty name="pinfo" property="price" /> <br>