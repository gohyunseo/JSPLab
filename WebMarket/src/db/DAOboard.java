package db;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOboard {
	
	// C create R read U update D delete
	//회원 가입 (테이블에 데이터 넣기)
	public static int join(String title, String memo) throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement stmt = null;
		
		String sql = "INSERT INTO board (title, memo) VALUES(?,?)";
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, title);
			stmt.setString(2, memo);		
			
		int result = stmt.executeUpdate();
		// 결과가 1 과 2로 넘어 온다. 
		
		return result;
	}

}