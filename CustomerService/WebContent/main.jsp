<%@page import="db.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>고객목록</h3>
<%
 

ArrayList<DTOcustomer> members = DAOcustomer.getList();

for (DTOcustomer member : members) {
%>		
	<%=member.getNo()%>
	<a href="detail.jsp?no=<%=member.getNo() %>"><%=member.getId() %></a>
	<br>
<% 	
	}
%>


</body>
</html>