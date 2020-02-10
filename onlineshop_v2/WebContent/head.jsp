<%@ page contentType="text/html; charset=GBK" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">



<div style="width:950px;height:20px;margin:0 auto 5px;">  <hr >  </div>
<DIV class=secondaryHeader style="MARGIN: 0px auto; WIDTH: 950px">
<DIV class=sHBorder>
	
		
		
		<LINK href="${pageContext.request.contextPath }/css/tarena.css" rel=stylesheet>
		<script language = "JavaScript" src = "js/tarena.js"></script>
	
	<body onLoad="MM_preloadImages('${pageContext.request.contextPath }/images/index_on.gif','${pageContext.request.contextPath }/images/reg_on.gif','${pageContext.request.contextPath }/images/order_on.gif','../images/top/topxmas/jp_on.gif','../images/top/topxmas/download_on.gif','../images/top/topxmas/bbs_on.gif','../images/top/topxmas/designwz_on.gif')" topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" id="table2">
		  <tr>
		    <td width="62%" background="${pageContext.request.contextPath }/images/top_bg.gif">　</td>
		    
		    <td width="30%" background="${pageContext.request.contextPath }/images/az-joyo_logo.gif" align="right">
			<img src="${pageContext.request.contextPath }/images/dd.gif" width="352" height="58" border="0"></td>
		  </tr>
		</table>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <td background="${pageContext.request.contextPath }/images/dh_bg.gif" align="left" height="12">
		      <table width="100" border="0" cellspacing="0" cellpadding="0" align="center">
		        <tr>
		          <td width="5%">　</td>
		          <td width="10%"><a href="${pageContext.request.contextPath }/product/ProductListServlet" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image1','','images/index_on.gif',1)">
					<img name="Image1" border="0" src="${pageContext.request.contextPath }/images/index.gif" width="90" height="36"></a></td>
		          <td width="10%"><a href="${pageContext.request.contextPath }/ToModifyServlet" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image2','','images/reg_on.gif',1)">
					<img name="Image2" border="0" src="${pageContext.request.contextPath }/images/reg.gif" width="92" height="36"></a></td>
		          <td width="10%"><a href="${pageContext.request.contextPath }/ViewCartServlet" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image4','','images/carts_on.gif',1)">
					<img name="Image4" border="0" src="${pageContext.request.contextPath }/images/cart.gif" width="92" height="36"></a></td>
		          <td width="10%"><a href="${pageContext.request.contextPath }/OrderListServlet" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image5','','images/order_on.gif',1)">
					<img name="Image5" border="0" src="${pageContext.request.contextPath }/images/order.gif" width="92" height="36"></a></td>
		          <td width="10%"><a href="${pageContext.request.contextPath }/UserLogoutServlet" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image6','','images/exit_on.gif',1)">
					<img name="Image6" border="0" src="${pageContext.request.contextPath }/images/exit.gif" width="92" height="36"></a></td>
		        </tr>
		      </table>
		    </td>
		  </tr>
		</table>
		<table   cellspacing="1" cellpadding="3" align="center" border="0" width="98%">
		<tr>
		<td width="49%"><BR>
		>>>&nbsp;
		<font color="red"> ${user.name ==null ?"游客" : user.name} </font>&nbsp;
		欢迎您访问 <b>电子商务门户</b> </td>
		<td width="35%" align="right">
		</td>
		
		<td  align="right"  > <a href="${pageContext.request.contextPath }/login.jsp">用户登录</a></td>
		
		<td  align="right"> <a href="${pageContext.request.contextPath }/register.jsp">用户注册</a></td>
		
		</tr>
		
		
		</table>
		
		<table cellspacing=1 cellpadding=3 align=center class=tableBorder2>
		<tr>
		<td height=25 valign=middle>
                  <img src="${pageContext.request.contextPath }/images/Forum_nav.gif" align="absmiddle">
                  <a href=index.jsp>电子商务门户</a> →
					<img border="0" src="${pageContext.request.contextPath }/images/dog.gif" width="19" height="18">
					
                </td>
                </tr>
		</table>
              <br>
		







		
		