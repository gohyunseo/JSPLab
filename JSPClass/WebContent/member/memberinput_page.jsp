<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<%@ include file="../header.jsp" %>

<div class="alert alert-secondary" role="alert">
<div class = "container">
	<h1 class = "display-3">
	회원등록
	</h1>
</div>
</div>

<div class="container">
<form action = "memberinput_db.jsp" method="post"  enctype= "multipart/form-data">
	<div class = "form-group row">
	<label class = "col-sm-2">이름</label>
	<div class ="col-sm-3">
		<input name = "mname" type="text" class="form-control" placeholder ="회원명을 입력하세요.">
	</div>
	</div>
	
		<div class = "form-group row">
	<label class = "col-sm-2">전화번호</label>
	<div class ="col-sm-3">
		<input name = "mtel" type="text" class="form-control" placeholder ="전화번호를 입력하세요.">
	</div>
	</div>
	<div class="form-group ">
<div class="col-sm-5">
  <input type="file" name="image" class="form-control" id="inputGroupFile02">
</div>
</div>
<br>
	
		<div class="form-group row">
	<div class="col-sm-offset-2 col-sm-10">
		<input type="submit" class="btn btn-primary" value="등록">
			<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">	
			<a href="memberpage_list.jsp" class="btn btn-secondary" role="button">목록</a>	
	</div>
	</div>
</form>
</div>


<%@ include file="../footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>