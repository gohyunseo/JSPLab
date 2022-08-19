package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOproduct {
	
	// C create R read U update D delete
	//회원 가입 (테이블에 데이터 넣기)
	public static int productinsert(String pid,String pname,String pdesc,String pprice,String pfilename1, String pfilename2, String pfilename3) throws NamingException, SQLException  {

		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		
		String sql = "INSERT INTO product (pid, pname, pdesc, pprice, pfilename1, pfilename2, pfilename3) VALUES(?,?,?,?,?,?,?)";
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, pid);
			stmt.setString(2, pname);	
			stmt.setString(3, pdesc);		
			stmt.setString(4, pprice);		
			stmt.setString(5, pfilename1);
			stmt.setString(6, pfilename2);
			stmt.setString(7, pfilename3);
			
		result = stmt.executeUpdate();
		// 결과가 성공1 과 실패 0으로 넘어 온다. 
		
		return result;
	}
	
	public static ArrayList<DTOproduct> productList() throws NamingException, SQLException{
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM product";
		
		conn = ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
		rs = stmt.executeQuery();
		
		ArrayList<DTOproduct> products = new ArrayList<DTOproduct>();
		
		while(rs.next()) {
			products.add(new DTOproduct(rs.getString(1),
										rs.getString(2),
										rs.getString(3),
										rs.getString(4),
										rs.getString(5),
										rs.getString(6),
										rs.getString(7)));
		}
		return products;
	}
	
	public static DTOproduct productDetail(String pid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM product WHERE pid=? ";
		conn= ConnectionPool.get();
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, pid);	
		rs = stmt.executeQuery();
		
		rs.next();
		
		pid = rs.getString(1);
		String pname = rs.getString(2);
		String pdesc = rs.getString(3);
		String pprice = rs.getString(4);
		String pfilename1 = rs.getString(5);
		String pfilename2 = rs.getString(6);
		String pfilename3 = rs.getString(7);
		
		

		
		DTOproduct product = new DTOproduct(pid,pname,pdesc,pprice,pfilename1,pfilename2,pfilename3);
		
		return product;
	}
}