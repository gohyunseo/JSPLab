<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="mbclass.*" %>

<%

Connection conn = null;
conn = mbclass.getConnection();

PreparedStatement pstmt = null;

String sql = "CREATE table member("
			+ "mno 			int(10),"
			+ "mname		varchar(20),"
			+ "mtel			varchar(20),"
			+ "mlevel		int(5),"
			+ "mdate		timestamp,"
			+ "primary key(mno))";

	pstmt = conn.prepareStatement(sql);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	
	conn.close();
%>

