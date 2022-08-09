<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@page import="org.apache.tomcat.jni.Local"%>
<%@page import="java.util.Random"%>
<%
	String alphabet
		= request.getParameter("alphabet");
	//request.setAttribute("result", result);
	switch(alphabet) {
		case "a" : 
			request.setAttribute("result", LocalTime.now());
			request.getRequestDispatcher("A.jsp").forward(request, response);	
			break;
		case "b" :
			request.setAttribute("result", LocalDate.now());
			request.getRequestDispatcher("B.jsp").forward(request, response);	
			break;
		case "c" :
			Random r = new Random();
			request.setAttribute("result", r.nextInt());
			request.getRequestDispatcher("C.jsp").forward(request, response);	
			break;
	}
%>