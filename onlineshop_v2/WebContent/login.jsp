<%@ page contentType="text/html; charset=GBK" %>

<jsp:include  page="./head.jsp"></jsp:include>


<!--�ļ��忪ʼ-->

		<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="${pageContext.request.contextPath }/images/Forum_nav.gif" align="absmiddle">
                  <a href=index.jsp>���������Ż�</a> �� �û���¼
                </td>
                </tr>
		</table>
              <br>
              <p align="center"><font color="Red">${message }</font></p>


        <table align="center" >
		<tr>
		<td> <img src="${pageContext.request.contextPath }/images/cart_03.jpg" width=81 height="108" border="0"></td>
		<td> <img src="${pageContext.request.contextPath }/images/shubiao.jpg" width=110 height="74" border="0"></td>
		
		</tr>
		</table>    
		



	<form action="${pageContext.request.contextPath}/user/userLogin.do"  method=post name="login">
		<table cellpadding=3 cellspacing=1 align=center class=tableborder1>
		<tr>
			<td valign=middle colspan=2 align=center height=25 background="${pageContext.request.contextPath }/images/bg2.gif" ><font color="#ffffff"><b>���������û����������¼</b></font></td>
		</tr>
		<tr>
		<td valign=middle class=tablebody1>�����������û���</td>
			<td valign=middle class=tablebody1><INPUT name=name type=text> &nbsp;
				<a href="${pageContext.request.contextPath }/register.jsp">û��ע�᣿</a>
			</td>
		</tr>
		<tr>
			<td valign=middle class=tablebody1>��������������</td>
			<td valign=middle class=tablebody1><INPUT name=passwd type=password> &nbsp; </td>
		</tr>
		<tr>
			<td class=tablebody2 valign=middle colspan=2 align=center><input type=submit value="�� ¼" ></td>
		</tr>
		</table>
	</form>
	

<jsp:include  page="./footer.jsp"></jsp:include>