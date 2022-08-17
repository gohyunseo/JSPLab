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
int addCount =0;
void addCount(){
	pageCount++;
}


%>

<p>이 사이트에 <%=pageCount%>번째 방문하였습니다.
</body>
</html>