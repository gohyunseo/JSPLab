<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%!
int a = 1;
int b = 2;
int c = 3;

int count=0; 
%>
<%--JSP 전용 주석--%>
Page Count is <%= ++count %> blah~blah~blah~blah~blah~
<br>
<%--<p> Today's date :<%=new java.util.Date() <p>--%>
<p>Today's Date : <%= new Date() %>
<p>SUM:<%= a+b+c %>
</body>
</html>