<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Delete</title>
</head>
<body>
<%
	//세션 삭제전 정보 확인
	out.print("세션생성시간=" + session.getCreationTime() + "초<br>");
	out.print("마지막 접근시간=" + session.getLastAccessedTime() + "초<br>");
	out.print("세션 유지시간=" + (session.getLastAccessedTime()-session.getCreationTime()) + "초<br>");
	out.print("세션 유효시간=" + session.getMaxInactiveInterval() + "초<br>");

	//세션 정보 삭제
	session.removeAttribute("id");
	session.removeAttribute("name");
	
	out.print("세션정보 삭제완료");
%>

<p><a href="session_check.jsp">세션확인</a>
</body>
</html>