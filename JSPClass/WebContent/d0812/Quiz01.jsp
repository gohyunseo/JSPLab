<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 10이하의 짝수만 출력하세요 -->
<%!
int i = 1;
%>

<%
for(i=1;i<=10;i++){
	if(i%2==0){
		out.print(i);
	}
}
%>

<%= "가 짝수다." %>


</body>
</html>