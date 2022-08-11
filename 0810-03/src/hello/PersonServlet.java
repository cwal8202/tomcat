package hello;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import person.Person;
import person.PersonDao;

public class PersonServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PersonDao dao = new PersonDao();
		List<Person> list = new ArrayList<Person>();
		try {
			list = (dao.personList());
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		System.out.println("서블렛 생성됨??");
		req.setAttribute("personList", list);
		req.getRequestDispatcher("b.jsp").forward(req, resp);
	}
}
