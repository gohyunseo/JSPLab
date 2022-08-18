<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>파일 목록</h3>
<%
 

ArrayList<DTOfile> files = DAOfile.fileList();

for (DTOfile file : files) {
%>		
	<%=file.getBid()%>
	<a href="filedetail.jsp?no=<%=file.getBid() %>"><%=file.getTitle() %></a>
	<br>
<% 	
	}
%>


</body>
</html>