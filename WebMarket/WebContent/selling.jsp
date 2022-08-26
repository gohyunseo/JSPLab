<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="db.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송관리</title>
</head>
<body>
<%@ include file = "header.jsp" %>
<h3>배송관리</h3>

<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
 <tr>
<th scope="col">번호</th>
<th scope="col">구매자</th>
<th scope="col">구매물품</th>
<th scope="col">주소</th>
<th scope="col">전화번호</th>
<th scope="col">가격</th>
<th scope="col">구매일</th>
<th scope="col">상태</th>
</tr>
</thead>
<%

ArrayList<DTOdelivery> deliverys = DAOdelivery.deliveryList();

for(DTOdelivery delivery : deliverys) {

%>
<tbody>
<tr>
    <th scope="row"><%=delivery.getDid()%></th>
      <td><%=delivery.getDid() %></td>
      <td><%=delivery.getDpname() %></td>
      <td><%=delivery.getDmaddr() %></td>
      <td><%=delivery.getDmtel() %></td>
      <td><%=delivery.getDprice() %></td>
      <td><%=delivery.getDdate() %></td>
  	
 <td> 
 	  <%
	  if(delivery.getDstatus().equals("1")){
	  out.print("[입금전]");
	  }else if(delivery.getDstatus().equals("2")){
		  
		  %>
		  
		  [<a href="javascript:mClick()">입금완료</a>]
 	 <%
		  
	  /* out.print("[입금완료]"); */
	 
	  }else if(delivery.getDstatus().equals("3")){
 	%>
 		  [<a href="javascript:dClick()">배송전</a>]
		  		
		  <%

	  }else if(delivery.getDstatus().equals("4")){
 	  out.print("[배송중]");  
	  }else{
 	  out.print("[배송완료]");  
	  }
	  %>
 </td>
<script>
				function mClick(){		
					 if (confirm("입금완료되었나요?") == true){ 
						   //true는 확인버튼을 눌렀을 때 코드 작성						  
						   location.href = "sellingstatus.jsp";
						   
						 }else{
						   // false는 취소버튼을 눌렀을 때, 취소됨
						   console.log("취소되었습니다");
						 }
				}
				
				function dClick(){
					 if (confirm("배송을 시작할까요?") == true){ 
						   //true는 확인버튼을 눌렀을 때 코드 작성						  
						   location.href = "sellingstatus.jsp";
						 }else{
						   // false는 취소버튼을 눌렀을 때, 취소됨
						   console.log("취소되었습니다");
						 }
				}
		</script>
  	
  	
  	
</tr>
 <%} %>
 </tbody>
</table>
</div>
<%@ include file = "footer.jsp" %>
</body>
</html>