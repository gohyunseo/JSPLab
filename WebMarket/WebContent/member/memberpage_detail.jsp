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
<link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<%@ include file="../header.jsp" %>

<div class="container w-70">
<div class="card" style="width: 30rem;">
<%
	String no = request.getParameter("no");

	DTOmember member = DAOmember.memberDetail(no);
	
	String img = member.getMiname();
	String imgstr = "";
	
	if(img != null){
		imgstr = "../images/"+ img;
	}
%>
	
  <img src="<%=imgstr%>" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text">	
    <%=member.getMno()%><br>
	<%=member.getMname()%><br>
	<%=member.getMtel()%><br>
	<%=member.getMlevel()%><br>
	<%=member.getMdate()%></p>
</div>
</div>
</div>


	<br>
	<div class= "container">
<div class="col-sm-offset-2 col-sm-10 display-3">
<a class="btn btn-primary" href="memberpage_list.jsp" role="button">목록</a>
</div>
</div>
<%@ include file="../footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>