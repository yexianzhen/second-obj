<%@ page contentType="text/html; charset=GBK" %>

<jsp:include  page="./head.jsp"></jsp:include>


<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="${pageContext.request.contextPath }/images/Forum_nav.gif" align="absmiddle">
                  <a href=index.jsp>���������Ż�</a> �� �û�ע��
                </td>
                </tr>
		</table>
              <br>
<table  align="center">
		<tr>
		<td> <img src="${pageContext.request.contextPath }/images/ME.jpg" width=104 height="133" border="0"></td>
		</tr>
		</table>   
<form method="post" name="reg" action="${pageContext.request.contextPath}/user/register.do">
	<table cellpadding="3" cellspacing="1" align="center" class="tableborder1" id="table1">
		<tr>
			<td valign="middle" colspan="2" align="center" height="25" background="${pageContext.request.contextPath }/images/bg2.gif">
			<font color="#ffffff"><b>���û�ע��</b></font></td>
		</tr>
		<tr>
			<td width="40%" class="tablebody1"><b>�û���</b>��<br>
			
			<font color="red">ע���û�����������Ϊ0��16�ַ�</font></td>
			<td width="60%" class="tablebody1">
			<input maxLength="8" size="32" name="name" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		<tr>
			<td width="40%" class="tablebody1"><b>����(����6λ������8λ)</b>��<br>
			<font color="red">���������룬���ִ�Сд��<br>
			�벻Ҫʹ���κ����� \'*\'��\' \' �� HTML �ַ�'</font>
			</td>
			<td width="60%" class="tablebody1">
			<input type="password" maxLength="8" size="32" name="passwd" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>���ڵ���</b>��</td>
			<td class="tablebody1">
			<select name="country" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
				<option value="1">�й�</option>
				
			</select>
			<select name="province" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
                <option value="1" selected>����</option>

                <option value="2" >����</option>

                <option value="3" >����</option>

                <option value="4" >����</option>

                <option value="5" >�㶫</option>

                <option value="6" >����</option>

                <option value="7" >����</option>

                <option value="8" >����</option>

                <option value="9" >����</option>

                <option value="10" >����</option>

                <option value="11" >�ӱ�</option>

                <option value="12" >����</option>

                <option value="13" >���</option>

                <option value="14" >������</option>

                <option value="15" >����</option>

                <option value="16" >����</option>

                <option value="17" >����</option>

                <option value="18" >����</option>

                <option value="19" >����</option>

                <option value="20" >����</option>

                <option value="21" >���ɹ�</option>

                <option value="22" >����</option>

                <option value="23" >�ຣ</option>

                <option value="24" >�Ĵ�</option>

                <option value="25" >ɽ��</option>

                <option value="26" >�Ϻ�</option>

                <option value="27" >����</option>

                <option value="28" >ɽ��</option>

                <option value="29" >���</option>

                <option value="30" >̨��</option>

                <option value="31" >�½�</option>

                <option value="32" >����</option>

                <option value="33" >����</option>

                <option value="34" >�㽭</option>

                <option value="35" >����</option>
			</select>ʡ
			<input type="text" size="8" name="city" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">��/��</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>��ϵ��ַ1</b>��</td>
			<td class="tablebody1">
			<input type="text" size="64" maxlength="32" name="street1" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>��ϵ��ַ2</b>��</td>
			<td class="tablebody1">
			<input type="text" size="64" maxlength="32" name="street2" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>�ʱ�</b>��</td>
			<td class="tablebody1">
			<input type="text" size="32" maxlength="8" name="zip" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>��ͥ�绰</b>��</td>
			<td class="tablebody1">
			<input type="text" size="32" maxlength="16" name="homePhone" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>�칫�ҵ绰</b>��</td>
			<td class="tablebody1">
			<input type="text" size="32" maxlength="16" name="officePhone" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>�ֻ�</b>��</td>
			<td class="tablebody1">
			<input type="text" size="32" maxlength="16" name="cellPhone" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>Email��ַ</b>��<br>
			<font color="red">��������Ч���ʼ���ַ</font></td>
			<td class="tablebody1">
			<input maxLength="50" size="32" maxlength="32" name="email" style="font-family: Tahoma,Verdana,����; font-size: 12px; line-height: 15px; color: #000000"></td>
		</tr>
		<tr>
			<td class="tablebody2" valign="middle" colspan="2" align="center">
			<input type="submit" value="ע ��" >&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="�� ��"></td>
		</tr>
	</table>
</form>

<jsp:include  page="./footer.jsp"></jsp:include>
