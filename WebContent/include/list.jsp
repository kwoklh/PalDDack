<%@page import="SFVo.ProductVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br><br>
	<div class="col-sm-8 text-left">

	<!-- 리스트 출력 영역 -->
	<div id="listArea">
		<table class="table table-hover">
		    <thead>
		      <tr>
<!-- 		        <th>순번</th> -->
		        <th width="30%">상품코드</th>
		        <th>상품명</th>
		        <th>금액</th>
		        <th>상품설명</th>
		      </tr>
		    </thead>
		    <tbody>
		      <%
		    	  
		      List<ProductVO> list = (List<ProductVO>)session.getAttribute("searchList");
// 		      System.out.println("정보 나옴?? " + list);
		     
		      if(list != null){
// 			    int str = (int)request.getAttribute("str");
		      
		      	for(int i=0; i<list.size(); i++){
		      %>	  
			      <tr>
<%-- 			        <td><%=str + i %></td> --%>
			        <td width="30%"><%=list.get(i).getProCode() %></td>
			        <td><%=list.get(i).getProName() %></td>
			        <td><%=list.get(i).getProSellCost() %></td>
			        <td><%=list.get(i).getProCon() %></td>
			      </tr>
		      <%
		      	}//for end
		      }else{
		   	  %>
		   	  	<tr>
		   	  		<td colspan="5">게시글이 없습니다</td>
		   	  	</tr>
		   	  <%
		      }//if end
		      %>
		    </tbody>
		  </table>
	</div>
	
	<!-- 페이징 영역 -->
</div>
	
</body>
</html>