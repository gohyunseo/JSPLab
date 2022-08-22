package db;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.*;

public class DAOmember {
	
	// C create R read U update D delete
	//회원 가입 (테이블에 데이터 넣기)
	public static int join(String mname,String mpass, String mtel, String memail, String mgender, String maddr,  String miname) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO member (mname, mpass, mtel, memail, mgender, maddr, miname) VALUES(?,?,?,?,?,?,?)";
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			stmt.setString(2, mpass);
			stmt.setString(3, mtel);
			stmt.setString(4, memail);
			stmt.setString(5, mgender);
			stmt.setString(6, maddr);
			stmt.setString(7, miname);
			
		int result = stmt.executeUpdate();
		// 결과가 1 과 2로 넘어 온다. 
		
		return result;
	}
	
	public static int login(String mname,String mpass) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		int result = 0;
		
		String sql = "SELECT mname, mpass FROM member WHERE mname=?";
		
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, mname);
			
		rs = stmt.executeQuery();
		if(!rs.next()){
			return 3; //아이디 비번 모두 없는 회원
		}
		if(mpass.equals(rs.getNString("mpass"))) {
			return 1; //
		} return 2; //
	}
}
	
//	public static int memberinsert(String mname, String mtel, String miname) throws NamingException, SQLException {
//		
//		Connection conn =null;
//		PreparedStatement stmt = null;
//		try {
//		
//		String sql ="INSERT INTO member(mname, mtel, miname) VALUES(?,?,?)";
//				
//		conn = ConnectionPool.get();
//		
//		stmt = conn.prepareStatement(sql);
//			stmt.setString(1, mname);
//			stmt.setString(2, mtel);
//			stmt.setString(3, miname);
//			
//		int result = stmt.executeUpdate();
//	
//		return result;
//		} finally {
//			stmt.close();
//			conn.close();
//		}
//	}
//	public static ArrayList<DTOmember> memberList() throws NamingException, SQLException{
//		Connection conn = null;
//		PreparedStatement stmt = null;
//		ResultSet rs = null;
//		
//		String sql = "SELECT * FROM member";
//		
//		conn = ConnectionPool.get();
//		stmt = conn.prepareStatement(sql);
//		rs = stmt.executeQuery();
//		
//		ArrayList<DTOmember> members = new ArrayList<DTOmember>();
//		
//		while(rs.next()) {
//			members.add(new DTOmember(rs.getString(1),
//										rs.getString(2),
//										rs.getString(3),
//										rs.getString(4),
//										rs.getString(5),
//										rs.getString(6)));
//		}
//		return members;
//	}
//	
//	public static DTOmember memberDetail(String mno) throws NamingException, SQLException {
//		Connection conn = null;
//		PreparedStatement stmt = null;
//		ResultSet rs = null;
//		
//		String sql = "SELECT * FROM member WHERE mno=? ";
//		conn= ConnectionPool.get();
//		stmt = conn.prepareStatement(sql);
//			stmt.setString(1, mno);	
//		rs = stmt.executeQuery();
//		
//		rs.next();
//		
//		mno = rs.getString(1);
//		String mname = rs.getString(2);
//		String mtel = rs.getString(3);
//		String mlevel = rs.getString(4);
//		String miname = rs.getString(5);
//		String mdate = rs.getString(6);
//		
//
//		
//		DTOmember member = new DTOmember(mno,mname,mtel,mlevel,miname,mdate);
//		
//		return member;
//	}
//}