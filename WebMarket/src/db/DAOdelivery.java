package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.NamingException;

import util.ConnectionPool;

public class DAOdelivery {
	public static int deliveryinsert(String dpid,String dmid,String dmaddr,String dmtel, String dpname, String dprice) throws NamingException, SQLException  {

		Connection conn = null;
		PreparedStatement stmt = null;
		int result = 0;
		
		String sql = "INSERT INTO delivery (dpid, dmid, dmaddr, dmtel, dpname, dprice) VALUES(?,?,?,?,?,?)";
		//Connection Pool 이용
		conn= ConnectionPool.get();
		
		stmt = conn.prepareStatement(sql);
			stmt.setString(1, dpid);	
			stmt.setString(2, dmid);		
			stmt.setString(3, dmaddr);		
			stmt.setString(4, dmtel);
			stmt.setString(5, dpname);
			stmt.setString(6, dprice);
			
		result = stmt.executeUpdate();
		// 결과가 성공1 과 실패 0으로 넘어 온다. 
		
		return result;
	}
}
