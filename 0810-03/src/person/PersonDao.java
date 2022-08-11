package person;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PersonDao {
	public void registPerson(String name, int age, String gender) throws ClassNotFoundException, SQLException {
		Person person = new Person(name, age, gender);

		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_db", "root", "root");
			pstmt = conn.prepareStatement("insert into person(name, age, gender) values (?, ?, ?);");
			pstmt.setString(1, name);
			pstmt.setInt(2, age);
			pstmt.setString(3, gender);
			pstmt.executeUpdate();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public List<Person> personList() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Person> personList = new ArrayList<Person>();
		
		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_db", "root", "root");
			pstmt = conn.prepareStatement("select name, age, gender from person;");
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String gender = rs.getString("gender");
				Person person = new Person(name, age, gender);
				personList.add(person);
			}
		} catch (SQLException e) {
			e.printStackTrace();
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
		System.out.println(personList);
		return personList;
	}
}
