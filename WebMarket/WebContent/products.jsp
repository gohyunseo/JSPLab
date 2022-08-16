<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- CSS only -->
<link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

<%@ include file = "header.jsp" %>

<div class ="alert alert-secondary" role="alret">
<div class = "container">

	<h1 class= "displat-3">제품 목록
	</h1>
	
	<div class="container">
	<div class ="roW" align="center">
	
		<%		
		
		
		//상품목록 출력 for시작
		%>
		
		<div class = "col-md-4">
		<h3><%= pname %></h3>
		<p><%= pdesc %></p>
		<p><%= pprice %></p>
		</div>
		
		<%
		//for 닫기
		%>
	
	</div>
		<hr>
	</div>
</div>
</div>

<%@ include file = "footer.jsp" %>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

</body>
</html>