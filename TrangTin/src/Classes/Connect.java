package Classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
	static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost/trangtin";
	
	static final String USER = "root";
	static final String PASS = "user";
	
	private Connection conn = null;
	
	public Connect() throws Exception {
		Class.forName(JDBC_DRIVER);
		try
		{
			setConn(DriverManager.getConnection(DB_URL,USER,PASS));
			System.out.println("Connect success!");
		}
		catch (SQLException e) {
			 throw new Exception(e.getMessage() + "Connect failed to database .... ");
		 }
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}
}