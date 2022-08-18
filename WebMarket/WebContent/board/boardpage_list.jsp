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
<link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<%@ include file="../header.jsp" %>


<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">Board List</h1>
</div>	
</div>
<div class="container w-70">
<div class="card" style="width: 50rem;">
  <img src="../images/ralo3.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">자 드가자~</p>
  </div>
  </div>
</div>
<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
    <tr>
      <th scope="col">Bid</th>
      <th scope="col">Title</th>
      <th scope="col">Content</th>
    </tr>
  </thead>
  <tbody>
 <%
ArrayList<DTOboard> files = DAOboard.fileList();

for (DTOboard file : files) {
%>		

    <tr>
      <th scope="row"><%=file.getBid()%></th>
      <td>	<a href="boardpadge_detail.jsp?no=<%=file.getBid() %>"><%=file.getTitle() %></a></td>
      <td>	<a href="boardpadge_detail.jsp?no=<%=file.getBid() %>"><%=file.getContent() %></a></td>
    </tr>
<% 	
	}
%>    
    
    
  </tbody>
</table>
</div>
<br>

<div class= "container">
<div class="col-sm-offset-2 col-sm-10 display-3">
<a class="btn btn-primary" href="boardinput_page.jsp" role="button">등록</a>
</div>
</div>

<br>
<%@ include file="../footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>