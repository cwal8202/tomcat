package hello;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import person.PersonDao;
import person.PersonValidator;

public class RegistServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 한글깨짐 = encoding 설정하기
		req.setCharacterEncoding("utf-8");
		
		String name = null;
		PersonValidator pv = new PersonValidator();
		name = (String)req.getParameter("name");
		Integer age = null; 
		age = (Integer)Integer.valueOf((String)req.getParameter("age"));
		String gender = (String)req.getParameter("gender");

		
		// 입력값 유효한지???
		// 모든 값은 필수!
		// 이름, 성 10자
		// 나이 정수
		// 이메일 고유 50자
		// 입력값 유효한지??
	      // 모든 값은 필수
	      // 이름, 성 10자
	      // 나이 정수
	      // 이메일 고유 50자(쌤 db에 있음)
	      
	      PersonValidator validator = new PersonValidator();
	      Map<String, String> errors = new HashMap<String, String>();
	      errors.putAll(validator.isValidName(name));
	      errors.putAll(validator.isValidAge(String.valueOf(age)));
	      // 위처럼 하려면 key값이 다 달라야함, key, value값 기준이면 상관x
	   
	      
	      // 그러면 잘못된 값일 때 사용자에게 뭐라고 해야하지?
	      if (errors.size() > 0) {
	         req.setAttribute("errors", errors);
	         req.getRequestDispatcher("a.jsp").forward(req, resp);
	         // 다시 입력창으로, error 메세지 보여주면서 다시 입력하도록 함
	         // error 없으면 아래 흐름으로
	      } else {
			// 잘못된 값일때 사용자에게 뭐라고 말해야 할지
			
			PersonDao dao = new PersonDao();
			try {
				dao.registPerson(name, age, gender);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		// 나중에 목록 페이지로 보낼것이다. = context경로 + (servlet으로 가니깐 servlet주소넣음)
		resp.sendRedirect(req.getContextPath() + "/personList");
	     }
	}
}
