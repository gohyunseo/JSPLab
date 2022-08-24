<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Board_INPUT</title>
<!-- 서머노트를 위해 추가해야할 부분 -->

  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath}/resource/summernote/summernote-lite.js"></script>
  <script src="${pageContext.request.contextPath}/resource/summernote/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/summernote/summernote-lite.css">
  
</head>
<body>

<%@ include file="header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				BOARD UPLOAD
			</h1>
		</div>
	</div>
	
	<%
	String mname=(String)session.getAttribute("mname");
	DTOmember member=DAOmember.getDetail(mname);
	%>
	
	<div class="container">
		<form action="boardinput0822.jsp" method="post">
			
			<div class="form-group row">
				<label class="col-sm-2">TITLE</label>
				<div class="col-sm-8">
					<input name="title" type="text" class="form-control" placeholder="제목을 입력하세요">
				</div>
			</div>
			
			<div class="form-group row">
				<label class="col-sm-2">CONTENT</label>
				<div class="col-sm-8">
						<textarea id="summernote" class="col-sm-8" name="content"></textarea>
					</div>
					<script>
					$(document).ready(function() {
						$('#summernote').summernote({
							  height: 100,                 // 에디터 높이
							  lang: "ko-KR",					// 한글 설정
							  placeholder: '게시판에 등록할 내용을 적어주세요.'	//placeholder 설정
						});
					});
					</script>
			</div>
			
			<br>
			<div class="form-group row">
				<label class="col-sm-2">AUTHOR</label>
				<div class="col-sm-8">
					<input name="author" type="text" class="form-control" value="<%=member.getMname() %>" readonly>
				</div>
			</div>
			<br>
			
			<div class="form-group-row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
					<input type="reset" class="btn btn-danger" value="취소" onclick="reset()">
				</div>
			</div>
		
		</form>
	</div>

<%@ include file="footer.jsp" %>

</body>
</html>