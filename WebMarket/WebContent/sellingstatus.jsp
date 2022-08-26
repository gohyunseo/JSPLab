<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="db.*"%>
<%@page import="java.util.*"%>
<%
	String status = request.getParameter("did");

	DAOdelivery.statusup("did");
	



%>