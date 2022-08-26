<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메일전송</title>
</head>
<body>
<h3>이메일 전송</h3>
<form action = "sendprocess.jsp" method="post">
보내는 사람:<input type="text" name="from"><br>
받는사람:<input type="text" name="to"><br>
제목:<input type="text" name="subject"><br>
종류:<input type="radio" name="format" value="text" checked>TEXT
	<input type="radio" name="format" value="html">HTML<br>
내용:<textarea name="content" cols="60" rows="10"></textarea>
<button type = "submit">전송하기</button>
</form>
</body>
</html>