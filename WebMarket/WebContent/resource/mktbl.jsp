<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"  %>


<%

String driverClass = "com.mysql.jdbc.Driver";
Class.forName(driverClass);

Connection conn = null;

String url = "jdbc:mysql://localhost:3306/webmarket";
String id = "root";
String pw = "0000";

conn = DriverManager.getConnection(url, id, pw);

PreparedStatement pstmt = null;

String sql = "CREATE table product("
			+ "pid	varchar(20),"
			+ "pname varchar(20),"
			+ "pdesc varchar(20),"
			+ "pprice varchar(20),"
			+ "pfilename varchar(20),"
			+ "primary key(pid))";

	pstmt = conn.prepareStatement(sql);
	
	pstmt.executeUpdate();
	
	pstmt.close();
	
	conn.close();
%>

