<%@ page contentType="text/html; charset=GBK" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*"  %>
<%@page import="com.ecp.entity.*" %>

<jsp:include  page="./head.jsp"></jsp:include>

		
		<table align="center">
		<tr>
		<td> <img src="${pageContext.request.contextPath }/images/cart_02-1.jpg" width=81 height="108" border="0"></td>
		<td> <img src="${pageContext.request.contextPath }/images/shubiao.jpg" width=110 height="74" border="0"></td>
		
		</tr>
		</table>    
		
              <br>

		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>产品名称</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>价格</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>数量</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>合计</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>操作</b></font></td>
		</tr>
         
        <c:forEach items="${lineList }" var="line" varStatus="status">     
		<tr>
			<form method="post" action="${pageContext.request.contextPath }/UpdataCartServlet" name="f1">
			<input type="hidden" name="productid" value="${line.product.id}">
		
			<td class=tablebody2 valign=middle align=center width="">${status.count}</td>
			<td class=tablebody2 valign=middle width="">&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/product/detail?product_id=${line.product.id }">${line.product.name }</a></td>
			<td class=tablebody2 valign=middle align=center width="">${line.product.basePrice }</td>
			<td class=tablebody2 valign=middle align=center width=""><input type="text" name="num" value="${line.amount }" size="4" onblur="javascript:if(this.value<1){alert('对不起，产品数量不能小于 1 ');this.focus();}else{number.value=this.value;}"/></td>
			<td class=tablebody2 valign=middle align=left width="">&nbsp;&nbsp;${line.product.basePrice *line.amount}</td>
			<td class=tablebody2 valign=middle align=center width="">
			<input type="hidden" value="${line.product.id }"  name="product_id" />
			<input type="button" value="返回" onclick="history.go(-1)"> <input type="submit" value="保存修改"></td>
			</form>
		</tr>
		
        </c:forEach>  
        <c:if test="${empty  lineList }">
        <tr >
          <td height="50" colspan="10" align="center">对不起，购物车中暂时没有商品信息</td>
        </tr>
        </c:if>      
		
		<c:if test="${ not empty  lineList  }">
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="2">　</td>
			<td class=tablebody2 valign=middle align=center width="">件 &nbsp;数:
			</td>
			<td class=tablebody2 valign=middle align=left width="">
			<font color="#ff0000"><b>${count}</b></font></td>
			<td class=tablebody2 valign=middle align=left width="">总 &nbsp;计:<font color="#ff0000"><b>￥${total}</b></font></td>
				<td class=tablebody2 valign=middle align=center width="">　&nbsp;</td>
		</tr>
		</c:if>
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="6">
			<c:if test="${not empty  lineList }">
			<input type="button" value="提交订单" onclick="javascript:window.location='${pageContext.request.contextPath }/ConfirmOrder';"> 
			</c:if>
			&nbsp;&nbsp;
			<input type="button" value="继续购物" onclick="javascript:window.location='${pageContext.request.contextPath }/product/ProductListServlet';">
			&nbsp;&nbsp;
			 <input type="button" value="清空购物车" onclick="javascript:window.location='${pageContext.request.contextPath }/ClearCartServlet';"></td>
		</tr>
                </table>
                <br>
<jsp:include  page="./footer.jsp"></jsp:include>
