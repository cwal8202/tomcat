package kr.co.greenart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class CountryDAO {
	public List<String> getContinents() throws Exception {
		// db 연결
		// select
		
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<String> list =new ArrayList<String>();
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root");
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select Distinct Continent from country");
			
			while (rs.next()) {
				String name = rs.getString("Continent");
				list.add(name);
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (stmt != null) {
				stmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		return list;
	}
	
	public Map<String, Integer> getCountryByCountry(String continent) throws Exception {
		// db 연결
		// select
		
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Map<String, Integer> map = new LinkedHashMap<String, Integer>();
//		List<String> list =new ArrayList<>();
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root");
			pstmt = conn.prepareStatement("select name, population from country where continent = ? ;");
			pstmt.setString(1, continent);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				String name = rs.getString("name");
				int population = rs.getInt("population");
				map.put(name, population);
			}
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		}
		
		return (Map<String, Integer>) map;
	}
}
