<%@ page contentType="text/html; charset=GBK" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*"  %>
<%@page import="com.ecp.entity.*" %>

<jsp:include  page="./head.jsp"></jsp:include>

<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="${pageContext.request.contextPath }/images/Forum_nav.gif" align="absmiddle">
					<img border="0" src="${pageContext.request.contextPath }/images/dog.gif" width="19" height="18">
					购物清单确认
                </td>
                </tr>
		</table>
              <br>
              
              
          <table align="center">
		<tr>
		<td> <img src="${pageContext.request.contextPath }/images/cart_04.jpg" width=119 height="108" border="0"></td>
		<td> <img src="${pageContext.request.contextPath }/images/shubiao.jpg" width=110 height="74" border="0"></td>
		
		
		<td> <img src="${pageContext.request.contextPath }/images/cart_05.jpg" width=81 height="108" border="0"></td>
		<td> <img src="${pageContext.request.contextPath }/images/shubiao.jpg" width=110 height="74" border="0"></td>
		
		</tr>
		</table>        
              
              

<p align="Center">以下是购物车清单列表,请仔细检查所购商品</p>
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>序号</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>产品名称</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>作者</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>价格</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>数量</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>合计</b></font></td>
			</tr>
         
        <c:forEach items="${lineList }" var="line" varStatus="status">     
		<tr>
		    
			<td class=tablebody2 valign=middle align=center width="">${status.count}</td>
			<td class=tablebody2 valign=middle width="">&nbsp;&nbsp;<a href="productDetail.jsp?productid=2">${line.product.name }</a></td>
			<td class=tablebody2 valign=middle align=center width="">${line.product.author }</td>
			<td class=tablebody2 valign=middle align=center width="">${line.product.basePrice }</td>
			<td class=tablebody2 valign=middle align=center width="">${line.amount }</td>
			<td class=tablebody2 valign=middle align=left width="">&nbsp;&nbsp;${line.product.basePrice *line.amount}</td>
			
			
		</tr>
		
        </c:forEach>  
        <c:if test="${empty  lineList }">
        <tr bgColor="#95D5CD">
          <td height="50" colspan="10" align="center">对不起，购物车中暂时没有商品信息</td>
        </tr>
        </c:if>      
		
		<c:if test="${ lineList != null }">
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="2">　</td>
			<td class=tablebody2 valign=middle align=center width="">件 &nbsp;数:
			</td>
			<td class=tablebody2 valign=middle align=left width="">
			<font color="#ff0000"><b>${count}</b></font></td>
			<td class=tablebody2 valign=middle align=left width="">总 &nbsp;计:</td>
			<td class=tablebody2 valign=middle align=left width=""><font color="#ff0000"><b>￥${total}</b></font></td>

		</tr>
		</c:if>
		 </table>
		 <br>
		 
<p align="Center">以下是用户注册送货信息确认,如果变化请先进行更新操作</p>
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
		<tr>
			<td valign="middle" colspan="2" align="center" height="25" background="${pageContext.request.contextPath }/images/bg2.gif">
			<font color="#ffffff"><b>用户注册信息确认</b></font></td>
		</tr>
		<input  type="hidden"  name="id"  value="${user.id}" />
		<input  type="hidden"  name="info.id"  value="${user.info.id}" />
		<tr>
			<td width="40%" class="tablebody2"><b>用户名</b>：<br>
			</td>
			<td width="60%" class="tablebody1">
			${user.name} 
		</tr>
		
		<tr>
			<td class="tablebody2"><b>联系地址1</b>：</td>
			<td class="tablebody1">
		    ${user.info.street1 }
			</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>联系地址2</b>：</td>
			<td class="tablebody1">
			 ${user.info.street2 }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>邮编</b>：</td>
			<td class="tablebody1">
			 ${user.info.zip }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>家庭电话</b>：</td>
			<td class="tablebody1">
			 ${user.info.homePhone }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>办公室电话</b>：</td>
			<td class="tablebody1">
			 ${user.info.officePhone }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>手机</b>：</td>
			<td class="tablebody1">
			 ${user.info.cellPhone }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>Email地址</b>：<br>
			</td>
			<td class="tablebody1">
			${user.info.email }</td>
		</tr>
		
	</table>
		<form   method="post"  action="${pageContext.request.contextPath }/SubmitOrderServlet" >
	    <table cellpadding="3" cellspacing="1" align="center"  id="table1">
		<tr>
			<td valign="middle"  class="tablebody2" colspan="2" align="center" height="25" >
			请选择付款方式
			</td>
			<td>
			<select  name="payway"> <option value="1" checked>----现金付款----</option>
			<option value="2">----网银转帐----</option>
			<option value="3">----电子汇款----</option>
			
			</select>
			</td>
		</tr>
		</table>
		<p align="center">
		<input type="submit" value="提交订单"   /> 
		  &nbsp; &nbsp; &nbsp; &nbsp;
		  	<input type="button" value="取 &nbsp;&nbsp; 消"  onclick="history.go(-1)" /> 
		</p>
		</form>
		
               
                <br>
<jsp:include  page="./footer.jsp"></jsp:include>
