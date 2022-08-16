package kr.co.greenart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/board")
public class BoardServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("사용자가 GET방식의 요청을 하였습니다. (게시판 목록)");
	
		System.out.println("세션 값을 확인합니다.");
		HttpSession session = request.getSession();
		Object loginid = session.getAttribute("loginid");
		
		if (loginid != null) {
			List<String> articles = new ArrayList<String>(Arrays.asList("글1", "글2", "글3"));
			request.setAttribute("articles", articles);
			
			request.getRequestDispatcher("/WEB-INF/articles.jsp").forward(request, response);
		} else {
			System.out.println("로그인 되지 않은 유저");
			
			response.sendError(HttpServletResponse.SC_UNAUTHORIZED);
			
		}
	}
}
