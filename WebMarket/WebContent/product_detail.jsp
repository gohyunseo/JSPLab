<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "db.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"> -->
<%@ include file="header.jsp" %>

<div class="container w-70">
<div class="card" style="width: 30rem;">
<%
	String pid = request.getParameter("pid");

	DTOproduct product = DAOproduct.productDetail(pid);
	
	String img1 = product.getPfilename1();
	String imgstr1 = "";
	
	String img2 = product.getPfilename2();
	String imgstr2 = "";
	
	String img3 = product.getPfilename3();
	String imgstr3 = "";
	
	if(img1 != null){
		imgstr1 = "images/"+ img1;
	}
	if(img2 != null){
		imgstr2 = "images/"+ img2;
	}
	if(img3 != null){
		imgstr3 = "images/"+ img3;
	}
%>
	
  <img src="<%=imgstr1%>" class="card-img-top" alt="...">
  <img src="<%=imgstr2%>" class="card-img-top" alt="...">
  <img src="<%=imgstr3%>" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">	
    <%=product.getPid()%><br>
	<%=product.getPname()%><br>
	<%=product.getPdesc()%><br>
	<%=product.getPprice()%><p>
</div>
</div>
</div>


	<br>
	<div class= "container">
<div class="col-sm-offset-2 col-sm-10 display-3">
<a class="btn btn-primary" href="productlist.jsp" role="button">목록</a>
</div>
</div>
<%@ include file="footer.jsp" %>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script> -->
</body>
</html>