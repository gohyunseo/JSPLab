<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
  <!-- include libraries(jQuery, bootstrap) -->
    <script type="text/javascript" src="//code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
    <script type="text/javascript" src="cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
	
    <!-- include summernote css/js-->
    <link href="resource/summernote-lite.css" rel="stylesheet">
    <script src="resource/summernote-lite.js"></script>
    <script src="resource/summernote-ko-KR.js"></script>
</head>
<body>
<link href= "https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<%@ include file = "header.jsp" %>
<div class="alert alert-secondary" role="alert">
<div class = "container">
	<h1 class = "display-3">
	제품등록
	</h1>
</div>
</div>

<div class="container">
<form action = "productinput_db.jsp" method="post" enctype= "multipart/form-data">
	<div class = "form-group row">
	<label class = "col-sm-2">제품ID</label>
	<div class ="col-sm-3">
		<input name = "pid" type="text" class="form-control" placeholder ="제품아이디를 입력하세요">
	</div>
	</div>
	
		<div class = "form-group row">
	<label class = "col-sm-2">제품이름</label>
	<div class ="col-sm-3">
		<input name = "pname" type="text" class="form-control" placeholder ="제품이름을 입력하세요">
	</div>
	</div>

		<div class = "form-group row">
	<label class = "col-sm-2">제품가격</label>
	<div class ="col-sm-3">
		<input name = "pprice" type="text" class="form-control" placeholder ="제품가격 입력하세요">
	</div>
	</div>

	    <textarea id="summernote" name = "pdesc"  type="text" class="form-control">
		제품설명
	    </textarea>
    <script>
      $('#summernote').summernote({
        placeholder: 'Hello Bootstrap 5',
        tabsize: 2,
        height: 100,
        lang: "ko-KR"
        
      });
    </script>


<!-- 		<div class="form-group row">
		<label class="col-sm-2">제품설명</label>
		<div class="col-sm-3">
			<textarea name="pdesc" rows="5" cols="20" class="form-control" placeholder="제품설명을 입력하세요"></textarea>
		</div>
	</div> -->
	
	<div class="form-group ">
<div class="col-sm-5">
  <input type="file" name="image1" class="form-control" id="inputGroupFile02">
</div>
</div>
	<div class="form-group ">
<div class="col-sm-5">
  <input type="file" name="image2" class="form-control" id="inputGroupFile02">
</div>
</div>
	<div class="form-group ">
<div class="col-sm-5">
  <input type="file" name="image3" class="form-control" id="inputGroupFile02">
</div>
</div>
<br>

	
	<div class="form-group row">
	<div class="col-sm-offset-2 col-sm-10">
		<input type="submit" class="btn btn-primary" value="등록">
			<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">		
		<a href="productlist.jsp" class="btn btn-secondary" role="button">목록</a>
	</div>
	</div>
</form>
</div>



<%@ include file = "footer.jsp" %>
</body>
</html>