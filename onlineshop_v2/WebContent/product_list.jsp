<%@ page contentType="text/html; charset=GBK" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*" %>
<%@page import="com.ecp.entity.*" %>


<jsp:include  page="./head.jsp"></jsp:include>





  <table align="center">
		<tr>
		<td align="center"> <img src="${pageContext.request.contextPath }/images/iconOnlineShopping.gif" width="205" height="75" border="0"></td>
		
		<td align="center"> <img src="${pageContext.request.contextPath }/images/gw_dz.gif" width="210" height="85" border="0"></td>
		<td align="center"> <img src="${pageContext.request.contextPath }/images/4.jpg" width="118" height="80" border="0"></td>
		<td align="center"> <img src="${pageContext.request.contextPath }/images/105-2.jpg" width="149" height="70" border="0"></td>
		
		<td align="center"> <img src="${pageContext.request.contextPath }/images/logo222.gif" width="167" height="46" border="0"></td>
		
		</tr>
		</table>    
              
       
              
      <form method="post"  action="${pageContext.request.contextPath }/user/manager.do?methodName=find">
      <table cellspacing=1 border="1" cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 >
          ��Ʒ�߼�����:          
        </td>
        <td>�����������ؼ���:</td>
        <td height=25 >
          <input type="text"  name="name" size="20" >         
        </td>
         <td>��ѡ����������:</td>
        <td height=25 >
            <select name="tj" >
            <option value="1" checked >---��������---</option>
            <option value="2">---��������---</option>
            <option value="3">---��������---</option>
            <option value="4">---��ͼ����---</option>
            </select>       
        </td>
        <td>
        <input  type="submit"  value="�� ʼ �� ��" />
        </td>
        </tr>
		</table>
      </form>

	<form action="loginAction.do" method=post name="login">
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>���</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>��Ʒ����</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>�۸�</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>����</b></font></td>
		</tr>
             
            
        <c:forEach items="${productList }" var="product" varStatus="status">
		<tr>
			<td class=tablebody2 valign=middle align=center width="">${status.count}</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/product/detail?product_id=${product.id}">${product.name }</a></td>
			<td class=tablebody2 valign=middle align=center width="">${ product.basePrice}</td>
			<td class=tablebody1 valign=middle align=center width=""><a href="${pageContext.request.contextPath }/AddToCartServlet?product_id=${product.id}">
			<img border="0" src="${pageContext.request.contextPath }/images/car_new.gif" width="97" height="18"></a> </td>
		</tr>
            </c:forEach> 
		<c:if  test="${empty list }" >
        <tr >
          <td height="50" colspan="4" align="center"><SPAN
				style="FONT-WEIGHT: 700; FONT-SIZE: 10.5pt; FONT-FAMILY: ����">��Ǹ��ǰû�з�����������Ʒ��Ϣ!</SPAN></td>
        </tr>
</c:if>
		</table>
	</form>
	
<c:if  test = "${ pageController != null }" >
<jsp:include  page="./dispage.jsp"></jsp:include>
</c:if>
<br>
<jsp:include  page="./footer.jsp"></jsp:include>