<%@page import="db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	int result = DAOcustomer.login(id,pass);
	// 로그인시 세가지 경우의 수
	// 1.로그인 성공 (ID/PASSWORD) 일치
	// 2.로그인 실패 (ID 일치/PASSWORD 불일치) > 다시로그인 시도
	// 3.로그인 실패 (ID가 없는 경우) > 회원가입
	if(result == 1){
		response.sendRedirect("main.jsp");
	}else if(result == 2){
		response.sendRedirect("login.jsp");
	}else{
		response.sendRedirect("join.jsp");
	}




%>