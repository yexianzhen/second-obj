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
					�����嵥ȷ��
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
              
              

<p align="Center">�����ǹ��ﳵ�嵥�б�,����ϸ���������Ʒ</p>
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>���</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>��Ʒ����</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>����</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>�۸�</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>����</b></font></td>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" width=""><font color="#ffffff"><b>�ϼ�</b></font></td>
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
          <td height="50" colspan="10" align="center">�Բ��𣬹��ﳵ����ʱû����Ʒ��Ϣ</td>
        </tr>
        </c:if>      
		
		<c:if test="${ lineList != null }">
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="2">��</td>
			<td class=tablebody2 valign=middle align=center width="">�� &nbsp;��:
			</td>
			<td class=tablebody2 valign=middle align=left width="">
			<font color="#ff0000"><b>${count}</b></font></td>
			<td class=tablebody2 valign=middle align=left width="">�� &nbsp;��:</td>
			<td class=tablebody2 valign=middle align=left width=""><font color="#ff0000"><b>��${total}</b></font></td>

		</tr>
		</c:if>
		 </table>
		 <br>
		 
<p align="Center">�������û�ע���ͻ���Ϣȷ��,����仯���Ƚ��и��²���</p>
		<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
		<tr>
			<td valign="middle" colspan="2" align="center" height="25" background="${pageContext.request.contextPath }/images/bg2.gif">
			<font color="#ffffff"><b>�û�ע����Ϣȷ��</b></font></td>
		</tr>
		<input  type="hidden"  name="id"  value="${user.id}" />
		<input  type="hidden"  name="info.id"  value="${user.info.id}" />
		<tr>
			<td width="40%" class="tablebody2"><b>�û���</b>��<br>
			</td>
			<td width="60%" class="tablebody1">
			${user.name} 
		</tr>
		
		<tr>
			<td class="tablebody2"><b>��ϵ��ַ1</b>��</td>
			<td class="tablebody1">
		    ${user.info.street1 }
			</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>��ϵ��ַ2</b>��</td>
			<td class="tablebody1">
			 ${user.info.street2 }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>�ʱ�</b>��</td>
			<td class="tablebody1">
			 ${user.info.zip }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>��ͥ�绰</b>��</td>
			<td class="tablebody1">
			 ${user.info.homePhone }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>�칫�ҵ绰</b>��</td>
			<td class="tablebody1">
			 ${user.info.officePhone }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>�ֻ�</b>��</td>
			<td class="tablebody1">
			 ${user.info.cellPhone }</td>
		</tr>
		<tr>
			<td class="tablebody2"><b>Email��ַ</b>��<br>
			</td>
			<td class="tablebody1">
			${user.info.email }</td>
		</tr>
		
	</table>
		<form   method="post"  action="${pageContext.request.contextPath }/SubmitOrderServlet" >
	    <table cellpadding="3" cellspacing="1" align="center"  id="table1">
		<tr>
			<td valign="middle"  class="tablebody2" colspan="2" align="center" height="25" >
			��ѡ�񸶿ʽ
			</td>
			<td>
			<select  name="payway"> <option value="1" checked>----�ֽ𸶿�----</option>
			<option value="2">----����ת��----</option>
			<option value="3">----���ӻ��----</option>
			
			</select>
			</td>
		</tr>
		</table>
		<p align="center">
		<input type="submit" value="�ύ����"   /> 
		  &nbsp; &nbsp; &nbsp; &nbsp;
		  	<input type="button" value="ȡ &nbsp;&nbsp; ��"  onclick="history.go(-1)" /> 
		</p>
		</form>
		
               
                <br>
<jsp:include  page="./footer.jsp"></jsp:include>
