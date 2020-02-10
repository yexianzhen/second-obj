<%@ page contentType="text/html; charset=GBK" %>

<jsp:include  page="./head.jsp"></jsp:include>


<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="${pageContext.request.contextPath }/images/Forum_nav.gif" align="absmiddle">
                  <a href=index.jsp>电子商务门户</a> → 用户注册
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
			<font color="#ffffff"><b>新用户注册</b></font></td>
		</tr>
		<tr>
			<td width="40%" class="tablebody1"><b>用户名</b>：<br>
			
			<font color="red">注册用户名长度限制为0－16字符</font></td>
			<td width="60%" class="tablebody1">
			<input maxLength="8" size="32" name="name" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		<tr>
			<td width="40%" class="tablebody1"><b>密码(至少6位，至多8位)</b>：<br>
			<font color="red">请输入密码，区分大小写。<br>
			请不要使用任何类似 \'*\'、\' \' 或 HTML 字符'</font>
			</td>
			<td width="60%" class="tablebody1">
			<input type="password" maxLength="8" size="32" name="passwd" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			<font color="#FF0000">*</font></td>
		</tr>
		
		<tr>
			<td class="tablebody1"><b>所在地区</b>：</td>
			<td class="tablebody1">
			<select name="country" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
				<option value="1">中国</option>
				
			</select>
			<select name="province" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
                <option value="1" selected>安徽</option>

                <option value="2" >北京</option>

                <option value="3" >重庆</option>

                <option value="4" >福建</option>

                <option value="5" >广东</option>

                <option value="6" >甘肃</option>

                <option value="7" >广西</option>

                <option value="8" >贵州</option>

                <option value="9" >河南</option>

                <option value="10" >湖北</option>

                <option value="11" >河北</option>

                <option value="12" >海南</option>

                <option value="13" >香港</option>

                <option value="14" >黑龙江</option>

                <option value="15" >湖南</option>

                <option value="16" >吉林</option>

                <option value="17" >江苏</option>

                <option value="18" >江西</option>

                <option value="19" >辽宁</option>

                <option value="20" >澳门</option>

                <option value="21" >内蒙古</option>

                <option value="22" >宁夏</option>

                <option value="23" >青海</option>

                <option value="24" >四川</option>

                <option value="25" >山东</option>

                <option value="26" >上海</option>

                <option value="27" >陕西</option>

                <option value="28" >山西</option>

                <option value="29" >天津</option>

                <option value="30" >台湾</option>

                <option value="31" >新疆</option>

                <option value="32" >西藏</option>

                <option value="33" >云南</option>

                <option value="34" >浙江</option>

                <option value="35" >其它</option>
			</select>省
			<input type="text" size="8" name="city" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">市/县</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>联系地址1</b>：</td>
			<td class="tablebody1">
			<input type="text" size="64" maxlength="32" name="street1" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>联系地址2</b>：</td>
			<td class="tablebody1">
			<input type="text" size="64" maxlength="32" name="street2" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>邮编</b>：</td>
			<td class="tablebody1">
			<input type="text" size="32" maxlength="8" name="zip" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>家庭电话</b>：</td>
			<td class="tablebody1">
			<input type="text" size="32" maxlength="16" name="homePhone" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>办公室电话</b>：</td>
			<td class="tablebody1">
			<input type="text" size="32" maxlength="16" name="officePhone" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>手机</b>：</td>
			<td class="tablebody1">
			<input type="text" size="32" maxlength="16" name="cellPhone" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000">
			</td>
		</tr>
		<tr>
			<td class="tablebody1"><b>Email地址</b>：<br>
			<font color="red">请输入有效的邮件地址</font></td>
			<td class="tablebody1">
			<input maxLength="50" size="32" maxlength="32" name="email" style="font-family: Tahoma,Verdana,宋体; font-size: 12px; line-height: 15px; color: #000000"></td>
		</tr>
		<tr>
			<td class="tablebody2" valign="middle" colspan="2" align="center">
			<input type="submit" value="注 册" >&nbsp;&nbsp;&nbsp;<input type="reset" name="reset" value="清 除"></td>
		</tr>
	</table>
</form>

<jsp:include  page="./footer.jsp"></jsp:include>
