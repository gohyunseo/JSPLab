<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//세션정보 삭제
session.removeAttribute("mname");

out.println("<script>alert('로그아웃 하셨습니다.');</script>");
out.println("<script>location.href='login.jsp'</script>");


%>
</body>
</html>