package com.kaankarakas.foodcart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FoodCartDbUtil {
	public static List<Food> getFoodList() throws ClassNotFoundException, SQLException {

		String url = "jdbc:mysql://localhost:3306/sakila";
		String username = "root";
		String password = "19071907";
		ArrayList<Food> food = new ArrayList<>();

		Class.forName("com.mysql.jdbc.Driver");

		Connection con = DriverManager.getConnection(url, username, password);

		Statement stmt = con.createStatement();

		ResultSet rs = stmt.executeQuery("select * from sakila.foodcart");

		while (rs.next()) {
			int id = rs.getInt(1);
			String item = rs.getString(2);
			float price = rs.getInt(3);
			Food f = new Food(id, item, price);
			food.add(f);
		}

		return food;
	}
}
