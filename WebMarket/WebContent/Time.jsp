<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.time.*" %>
<%@ page import = "java.util.*" %>
<div class = "container">

<%
Date day = new java.util.Date();
LocalDate now = LocalDate.now();

/*
	int year = now.getYear();
	String month = now.getMonth().toString();
	int month 


*/

int hour = day.getHours();
int min = day.getMinutes();
int sec = day.getSeconds();
%>

	<div class = "text-center">
	<h3>현재시간은 <%=now%> <%=hour %>: <%=min %>: <%=sec %>  입니다.</h3>
	
	</div>
</div>	