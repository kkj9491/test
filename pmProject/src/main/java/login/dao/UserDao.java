package login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import login.model.User;


public class UserDao {
	private Connection conn;
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "ORA_USER";
	private static final String PW = "1111";
	
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			return DriverManager.getConnection(URL, USER, PW);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return null;
	}	
	
	public boolean addUser(User user) {
		Connection conn = getConnection();
		PreparedStatement ps = null;
		int result;
		
		
		
	}
}
