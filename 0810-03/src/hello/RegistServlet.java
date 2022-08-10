package hello;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = (String)req.getParameter("name");
		Integer age = (Integer)Integer.valueOf((String)req.getParameter("age"));
		String gender = (String)req.getParameter("gender");
		
		PersonDao dao = new PersonDao();
		try {
			dao.registPerson(name, age, gender);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
