<%@page import="db.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mname = (String)session.getAttribute("mname");

	if (mname == null){
		out.println("<script>alert('회원 전용 페이지입니다. 로그인이 필요합니다.');</script>");
		out.println("<script>location.href='login.jsp'</script>");
	}
	
	boolean login = true;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<% if(login){
 		out.print(mname + "님 로그인 상태입니다.");
 		} else{
 		out.print("방문을 환영합니다. 로그인하세요.");
 		}
 		
 		%>   
 	
<link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<%@ include file="header.jsp" %>

        

<div class="alert alert-secondary" role="alert">
<div class="container">
	<h1 class = "display-3">제품 목록</h1>
</div>	
</div>


<%


ArrayList<DTOproduct> products = DAOproduct.productList();

%>
<div class="container">
<div class="row" align="center">
<% 
for (DTOproduct product : products) {
%>		
<div class="col-md-4">
	<a href="product_detail.jsp?pid=<%=product.getPid()  %>"><img style =  "width: 200px; height: 200px;"src = "images/<%=product.getPfilename1()%>"></a>
	<h3><a href="product_detail.jsp?pid=<%=product.getPid()  %>"><%=product.getPname() %></a></h3>
	<%-- <p><%=product.getPdesc() %></p> --%>
	<p><%=product.getPprice() %></p>
</div>

<% 	
	}
%>
</div>
</div>

<br>
<br>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>