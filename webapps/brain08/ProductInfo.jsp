<%@page contentType="text/html; charset=euc-kr" %>

<jsp:useBean class="mall.ProductInfo" id="pinfo" scope="request" />
�ڵ� : <jsp:getProperty name="pinfo" property="code" /> <br>
��ǰ�� : <jsp:getProperty name="pinfo" property="name" /> <br>
���� : <jsp:getProperty name="pinfo" property="price" /> <br>