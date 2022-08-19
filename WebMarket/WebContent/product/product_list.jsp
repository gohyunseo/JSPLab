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
	<h1 class = "display-3">상품목록</h1>
</div>	
</div>

<div class="container w-70">
<table class="table table-hover table-primary">
  <thead>
    <tr>
      <th scope="col">품번</th>
	  <th scope="col">상품사진</th>
      <th scope="col">상품명</th>
      <th scope="col">상품설명</th>
      <th scope="col">상품가격</th>
    </tr>
  </thead>
  <tbody>
 <%
ArrayList<DTOproduct> products = DAOproduct.productList();

for (DTOproduct product : products) {
%>		

    <tr>
      <th scope="row"><%=product.getPid()%></th>
      <td>	<a href="product_detail.jsp?no=<%=product.getPid()  %>"><img style= "width: 40px; height: 40px;" src= "../images/<%=product.getPfilename1() %>"></a></td>
      <td>	<a href="product_detail.jsp?no=<%=product.getPid()  %>"><%=product.getPname() %></a></td>
      <td>	<a href="product_detail.jsp?no=<%=product.getPid()  %>"><%=product.getPdesc() %></a></td>
      <td>	<a href="product_detail.jsp?no=<%=product.getPid()  %>"><%=product.getPprice() %></a></td>
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
<a class="btn btn-primary" href="productinput_page.jsp" role="button">등록</a>
</div>
</div>

<br>
<%@ include file="../footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>