package com.abhi.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	private static final String URL = "jdbc:mysql://localhost:3306/loginform";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "Abhi@123";
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection() throws SQLException {
		System.out.println("connection Build ho raha Hai !!");
		return DriverManager.getConnection(URL,USERNAME,PASSWORD);
	}

}
