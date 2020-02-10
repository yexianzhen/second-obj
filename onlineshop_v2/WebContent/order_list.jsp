<%@ page contentType="text/html; charset=GBK" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*"  %>

<jsp:include  page="./head.jsp"></jsp:include>




<!--文件体开始-->

	
              <br>
              
         
         <table align="center">
		<tr>
		
		<td align="center"> <img src="${pageContext.request.contextPath }/images/ORDER.jpg" width="104" height="132" border="0"></td>
		</tr>
		</table>    
              
       

 <br>
 
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>订单编号</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>订单金额</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>订单状态</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>付款方式</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>操作</b></font></td>
		</tr>
         <c:forEach items="${orderList }" var="order" varStatus="status">
	         
		<tr>
			<td class=tablebody2 valign=middle align=center width="">${status.count }</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<a href="../user/orderinfo.jsp?orderid=1">${order.name }</a></td>
			<td class=tablebody2 valign=middle align=left width="">${order.cost }</td>
			<td class=tablebody1 valign=middle align=center width="">${order.status.name }</td>
			<td class=tablebody2 valign=middle align=left width="">${order.payWay.payStyle } </td>
			<td class=tablebody1 valign=middle align=center width="">
			<input type="button" value="订单明细" onclick="javascript:window.location='${pageContext.request.contextPath }/OrderDetailServlet?order_id=${order.id}';"> </td>
		</tr>
         </c:forEach>   
         <c:if test="${empty  orderList }">
        <tr bgColor="#95D5CD">
          <td height="50" colspan="10" align="center">抱歉，您当前还没有任何订单信息!</td>
        </tr>
        </c:if>      
		  
        </table>
                <br>
<jsp:include  page="./footer.jsp"></jsp:include>

