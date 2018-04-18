package conexion;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class BDConn {
	private static final String URL = "jdbc:mysql://localhost:3306/grafiti";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "1234";
	

	public static Connection getConn() throws SQLException {
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		return (Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);
	}
}
