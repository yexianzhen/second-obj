<%@ page contentType="text/html; charset=GBK" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*"  %>
<%@page import="com.ecp.entity.*" %>

<jsp:include  page="./head.jsp"></jsp:include>


  
              


        <table align="center">
		<tr>
		
		<td align="center"> <img src="${pageContext.request.contextPath }/images/cart_icon4.gif" width="114" height="113" border="0"></td>
		</tr>
		</table>  
              

<p align="Center">购物车清单列表</p>
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>产品名称</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>作者</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>价格</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>数量</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>合计</b></font></td>
			</tr>
         
        <c:forEach items="${ lineList }" var="line" varStatus="status">     
		<tr>
		    
			<td class=tablebody2 valign=middle align=center width="">${status.count}</td>
			<td class=tablebody2 valign=middle width="">&nbsp;&nbsp;<a href="productDetail.jsp?productid=2">${line.product.name }</a></td>
			<td class=tablebody2 valign=middle align=center width="">${line.product.author }</td>
			<td class=tablebody2 valign=middle align=center width="">${line.product.basePrice }</td>
			<td class=tablebody2 valign=middle align=center width="">${line.amount }</td>
			<td class=tablebody2 valign=middle align=left width="">&nbsp;&nbsp;${line.product.basePrice *line.amount}</td>
					</tr>
		
        </c:forEach>  
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="2">　</td>
			<td class=tablebody2 valign=middle align=center width="">件 &nbsp;数:
			</td>
			<td class=tablebody2 valign=middle align=left width="">
			<font color="#ff0000"><b>${line.amount }</b></font></td>
			<td class=tablebody2 valign=middle align=left width="">总 &nbsp;计:</td>
			<td class=tablebody2 valign=middle align=left width=""><font color="#ff0000"><b>￥${order.cost}</b></font></td>
		</tr>
		 </table>
		 <table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
		<tr>
			<td valign="middle" colspan="2" align="center" height="25" background="${pageContext.request.contextPath }/images/bg2.gif">
			<font color="#ffffff"><b>订单用户信息</b></font></td>
		</tr>
		
		<tr>
			<td width="40%" class="tablebody2"><b>用户名</b>：<br>
			</td>
			<td width="60%" class="tablebody1">
			${user.name} 
		</tr>
		<tr>
			<td width="40%" class="tablebody2"><b>订单状态</b>：<br>
			</td>
			<td width="60%" class="tablebody1">
			${order.status.name} 
		</tr>
		<tr>
			<td width="40%" class="tablebody2"><b>付款方式</b>：<br>
			</td>
			<td width="60%" class="tablebody1">
			${order.payWay.payStyle} 
		</tr>
		</table>
		 
		 <br>
		<p align="center"><input type="button"  value="返 回"  onclick="history.go(-1)" ></p>
               
                <br>
<jsp:include  page="./footer.jsp"></jsp:include>
