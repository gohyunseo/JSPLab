<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Setting</title>
</head>
<body>
<%

	session.setAttribute("id","admin");
	session.setAttribute("name","관리자");
	
	out.print("세션 설정 완료");
%>

<p><a href="session_check.jsp">세션 확인</a>
</body>
</html>