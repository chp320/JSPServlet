<%@page contentType="text/html; charset=euc-kr" %>

<jsp:useBean class="mall.ClothingInfo" id="pinfo" scope="request" />
<%-- ProductInfo Ŭ���� ������� --%>
<jsp:setProperty name="pinfo" property="code" value="70002" />
<jsp:setProperty name="pinfo" property="name" value="���� Ƽ����" />
<jsp:setProperty name="pinfo" property="price" value="15000" />
<%-- ClothingInfo Ŭ���� ������� --%>
<jsp:setProperty name="pinfo" property="size" value="M" />
<jsp:setProperty name="pinfo" property="color" value="������" />

<html>
    <head><title>�Ƿ� ���� ����</title></head>
    <body>
        �Ƿ� ������ ����Ǿ����ϴ�. <br>
        ------------------------------------------------<br>
        <h3>��ǰ ���� ����</h3>
        <jsp:include page="ProductInfo.jsp" />
    </body>
</html>