<%@page contentType="text/html;charset=GBK"%>
<%@page pageEncoding="GBK"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="java.util.*" %>



<table width=450 class="fontwhite"  bordercolor="green" align="center">
    <tr>
	<td class='fontwhitetitle' align="center">

              ���� <font color=red>${pageController.totalRowsAmount}</font> ����¼
              ���� <font color=red>${pageController.totalPages}</font> ҳ
              ��ǰ�ǵ� <font color=red>${pageController.currentPage}</font> ҳ
            ( ÿҳ��ʾ <font color=red>${pageController.pageSize}</font> ����¼ )    
              &nbsp;&nbsp;&nbsp;&nbsp;
            
        </td>
    </tr>
    <tr>
    	<td align="center">
    	      <c:if test="${pageController.hasNext}">
              	<a href ="<%=request.getContextPath()%>/productmanager/tolist.do?currentPageNo=${pageController.currentPage}&toPageNo=${pageController.nextPage}"><font class='fontwhite1'>��һҳ</font></a>
              </c:if>

              <c:forEach var="i" begin="1" end="${pageController.totalPages}">
              	<a href ="<%=request.getContextPath()%>/productmanager/tolist.do?currentPageNo=${pageController.currentPage}&toPageNo=${i}"s><font class='fontwhite1'>${i}</font></a>
              </c:forEach>

              <c:if test="${pageController.hasPrevious}">
              	<a href="<%=request.getContextPath()%>/productmanager/tolist.do?currentPageNo=${pageController.currentPage}&toPageNo=${pageController.previousPage}"><font class='fontwhite1'>��һҳ</font></a>&nbsp;&nbsp;&nbsp;&nbsp;
              </c:if>
              
    	</td>
    </tr>
</table>
