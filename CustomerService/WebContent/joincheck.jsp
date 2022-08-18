<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "db.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pass = request.getParameter("pass");


	int result = DAOcustomer.join(id,name,pass);

	// 회원가입시 두가지 경우의 수 발생 
	// 1.회원가입성공 2.회원가입실패-이미가입된 회원 존재
	
	if (result ==1){
		response.sendRedirect("login.jsp");
	} else{
		response.sendRedirect("join.jsp");
	}
	
%>