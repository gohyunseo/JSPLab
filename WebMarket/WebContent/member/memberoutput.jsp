<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
	<%@page import="mbclass.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<%@include file ="../header.jsp" %>
<% 
		Connection conn = null;
		conn = mbclass.getConnection();
		PreparedStatement pstmt = null;

		String sql = "SELECT * FROM member";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.executeQuery();
		ResultSet rset = null;
		rset = pstmt.executeQuery();
%>

<div class="container">
<br><br><br>
</div>
<div class="container">
<div class="alert alert-primary alert-dismissible fade show" role="alert">
  <strong>회원정보!</strong> 조회하기.
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
</div>
<table class="table table-striped table-hover">
  <thead>
    <tr class="table-primary">
      <th scope="col">회원 번호</th>
      <th scope="col">회원 이름</th>
      <th scope="col">회원 전화번호</th>
      <th scope="col">회원 등급</th>
      <th scope="col">가입일</th>
    </tr>
  </thead>
  <tbody>
  
  <%
  int i = 1;
  while(rset.next())
  {
	  String mno = rset.getString("mno");
	  String mname = rset.getString("mname");
	  String mtel = rset.getString("mtel");
	  String mlevel = rset.getString("mlevel");
	  String mdate = rset.getString("mdate");
 %>
    <tr class="table-primary">
      <th scope="row"><%=mno%></th>
      <td class="table-info"><%=mname %></td>
      <td class="table-primary"><%=mtel %></td>
      <td class="table-info"><%=mlevel %></td>
      <td class="table-primary"><%=mdate %></td>
    </tr>
<%     
   i++;
  	}
  
  %>   
  </tbody>
</table>
</div>
<%
	rset.close();
	pstmt.close();
	conn.close();
%>

<%@include file ="../footer.jsp" %>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>


</body>
</html>