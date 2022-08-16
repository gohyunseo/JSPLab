<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	String pid = request.getParameter("pid");
	String pname = request.getParameter("pname");
	String pdesc = request.getParameter("pdesc");
	String pprice = request.getParameter("pprice");
	String pfilename = request.getParameter("pfilename");


			String driverClass = "com.mysql.jdbc.Driver";
			Class.forName(driverClass);
			
			Connection conn = null;

			String url = "jdbc:mysql://localhost:3306/webmarket";
			String id = "root";
			String pw = "0000";
			
			conn = DriverManager.getConnection(url, id, pw);
			
			PreparedStatement pstmt = null;
			
			String sql = "INSERT INTO product VALUES(?,?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pid);
			pstmt.setString(2, pname);
			pstmt.setString(3, pdesc);
			pstmt.setString(4, pprice);
			pstmt.setString(5, pfilename);

			
			pstmt.executeUpdate();
			
			pstmt.close();
			conn.close();

%>
