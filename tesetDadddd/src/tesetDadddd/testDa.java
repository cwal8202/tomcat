package tesetDadddd;

import java.sql.SQLException;
import java.util.List;

import person.Person;
import person.PersonDao;

public class testDa {
	public static void main(String[] args) {
		PersonDao dao = new PersonDao();
		List<Person> list = null;
		try {
			list = dao.personList();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			System.out.println(dao.registPerson("a", 3, "남자"));
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
	}
}
