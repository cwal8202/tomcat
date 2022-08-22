package file;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/api/idcheck")
public class IDCheckServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		
		String json;
		if (id.length() > 5) {
			json = "{ \"duplicate\":true}";
		} else {
			json = "{ \"duplicate\":false}";
		}
		resp.setContentType("application/json; charset=utf-8");	//setContentTpye대신 setHeader로 해도 된다. ContentType을 정하지 않을 경우 기본인 plainText를 자동으로 지정해준다.
		PrintWriter pw = resp.getWriter();
		pw.println(json);
		pw.flush();
	}	
}
