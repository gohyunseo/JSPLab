<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% //SQL 패키지 임포트 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL package import</title>
</head>
<body>
<%
//JDBC 드라이버 로딩
String driverClass = "com.mysql.jdbc.Driver";

	try {
		Class.forName(driverClass);
		out.print("JDBC Driver loading 성공!!<br>");
	} catch(ClassNotFoundException e){
		out.print("JDBC Driver loading 실패!!<br>");
	}
	
	//MySQL 데이터베이스 서버연결
	String url = "jdbc:mysql://localhost:3306";
	String id = "root";
	String pw = "0000";

	// connection object 생성
	Connection conn = null;
	
	try {
		conn = DriverManager.getConnection(url, id, pw);
		out.print("MySQL 서버 연결 성공!!<br>");
	} catch(SQLException e){
		out.print("MySQL 서버 연결 실패!!<br>");
	}finally{
		if(conn != null){
			try{
				conn.close();
				out.print("MySQL 서버 연결 종료<br>");
			} catch(Exception e){
				out.print("MySQL 서버 연결 종료에 문제가 생겼습니다.");
			}
		}
	}
%>
</body>
</html>