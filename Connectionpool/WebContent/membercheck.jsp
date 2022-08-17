<%@page import="db.*" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String mname = request.getParameter("mname");
	String mtel = request.getParameter("mtel");
	
	int result = DAOmember.join(mname, mtel);
	
	out.print(result);
%>


