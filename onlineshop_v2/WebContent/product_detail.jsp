<%@ page contentType="text/html; charset=GBK" %>

<jsp:include  page="./head.jsp"></jsp:include>

<!--�ļ��忪ʼ-->
		<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="${pageContext.request.contextPath}/images/Forum_nav.gif" align="absmiddle">
                  <a href=index.jsp>���������Ż�</a> �� ��Ʒ��ϸ
                </td>
                </tr>
		</table>
              <br>

	<form action="loginAction.do" method=post name="login">
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle align=center height=25 background="${pageContext.request.contextPath}/images/bg2.gif" colspan="2"><p><font color="#ffffff"><b>��ͨHibernate��Java����־û��������</b></font></td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="20%">��
			��&nbsp; �� ��</td>
			<td class=tablebody1 valign=middle width="80%">&nbsp;&nbsp;${product.author }</td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="20%">��
			��&nbsp; �� ��</td>
			<td class=tablebody1 valign=middle width="80%">&nbsp;&nbsp;${product.basePrice }</td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">���� �� �硿</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;${product.publish }</td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">�� ��&nbsp; ��
			��</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;${product.category.id }</td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">�� ҳ&nbsp; ��
			��</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;${product.pages }</td>
		</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">���������</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;${product.category.name }</td>
		</tr>
		<tr>
			<td class=tablebody1 align=center width="" valign="top">�� ��&nbsp; ��
			��</td>
			<td class=tablebody1 valign=middle width="">����
			${product.descriptions }
			</td>
			</tr>
		<tr>
			<td class=tablebody1 valign=middle align=center width="">��</td>
			<td class=tablebody1 valign=middle width="">&nbsp;&nbsp;<img border="0" src="${pageContext.request.contextPath }/${product.images }" width="127" height="180"></td>
		</tr>
		<tr>
			<td class=tablebody2 valign=middle align=center colspan="2"><a href="${pageContext.request.contextPath }/AddToCartServlet?&product_id=${product.id }">
			<img border="0" src="${pageContext.request.contextPath }/images/buycar.gif" width="92" height="21"></a> </td>
		</tr>
		</table>
	</form>
	

<jsp:include  page="./footer.jsp"></jsp:include>