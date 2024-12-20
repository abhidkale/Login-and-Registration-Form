package com.abhi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.abhi.util.DBUtil;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean isValidUser(String username, String password) {
		String query = "SELECT * FROM users WHERE username = ? AND password = ?";
			try (Connection connection = DBUtil.getConnection();
					PreparedStatement preparedstatement = connection.prepareStatement(query)){
				
				preparedstatement.setString(1, username);
				preparedstatement.setString(2, password);
				
				ResultSet resultSet = preparedstatement.executeQuery();
			//	System.out.println("query run ho gayi");
				return resultSet.next();
				
				}catch (SQLException e) {
					e.printStackTrace();
				
		return false;
				}
	}

	public boolean addUser(User user) {
		
	        String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

	        try (Connection connection = DBUtil.getConnection();
	             PreparedStatement preparedStatement = connection.prepareStatement(query)) {

	            preparedStatement.setString(1, user.getUsername());
	            preparedStatement.setString(2, user.getEmail());
	            preparedStatement.setString(3, user.getPassword());

	            int rowsAffected = preparedStatement.executeUpdate();
	            System.out.println("user apna add ho gaya");
	            return rowsAffected > 0;
	        } catch (SQLException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }


}
