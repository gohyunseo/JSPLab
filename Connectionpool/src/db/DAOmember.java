package db;

import java.sql.*;

import javax.naming.NamingException;

import util.*;

public class DAOmember {
	// C create R read U update D delete
	//회원 가입처리 (=테이블에 데이터 넣기)
	public static int join(String mname, String mtel) throws NamingException, SQLException {
		
		Connection conn =null;
		PreparedStatement stmt = null;
		try {
		
		String sql ="INSERT INTO member(mname, mtel) VALUES(?,?)";
					//Connectionpool 이용
		conn = ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setNString(1, mname);
			stmt.setNString(2, mtel);
			
		int result = stmt.executeUpdate();
		//결과가 성공시 1, 실패시 2로 넘어온다.
		return result;
		} finally {
			stmt.close();
			conn.close();
		}
	}
}
