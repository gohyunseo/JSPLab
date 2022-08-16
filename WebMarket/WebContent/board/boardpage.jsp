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


<div class="alert alert-secondary" role="alert">
<div class = "container">
	<h1 class = "display-3">
	제품등록
	</h1>
</div>
</div>

<div class="container">
<form action = "boardinput_db.jsp" method="post">
	<div class = "form-group row">
	<label class = "col-sm-2">제목</label>
	<div class ="col-sm-3">
		<input name = "title" type="text" class="form-control" placeholder ="제품아이디를 입력하세요">
	</div>
	</div>
	
	
		<div class="form-group row">
		<label class="col-sm-2">내용</label>
		<div class="col-sm-3">
			<textarea name="memo" rows="5" cols="20" class="form-control" placeholder="제품설명을 입력하세요"></textarea>
		</div>
	</div>
	
	
	<div class="form-group row">
	<div class="col-sm-offset-2 col-sm-10">
		<input type="submit" class="btn btn-primary" value="등록">
			<input type="reset" class="btn btn-primary" value="취소" onclick="reset()">		
	</div>
	</div>
</form>
</div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</body>
</html>