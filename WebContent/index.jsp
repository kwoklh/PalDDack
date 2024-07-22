<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 헤더영역 -->
<%@include file="include/top.jsp" %>

<%
	List<ProductVO> search = (List<ProductVO>) session.getAttribute("searchList");
%>

<%
	if(search != null){
%>
		<%@include file="./include/list.jsp" %>
<%
	}else{
 %>
		기본화면...
		
<%
	}
%> 
<!-- aside1 -->
    
<!-- aside2 -->

<!-- 푸터영역 -->

</body>
</html>
