package mvc.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection conn = null;
		
		String url = "jdbc:mysql://localhost:3306/MarketBoardDB?useSSL=false&serverTimezone=Asia/Seoul";
		String user = "root";
		String password = "1234";
		String driver = "com.mysql.cj.jdbc.Driver";
		
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
		
		return conn;
	}
}
