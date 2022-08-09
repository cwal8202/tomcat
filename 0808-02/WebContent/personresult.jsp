<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String name = request.getParameter("name");
		name = name.trim();
		String age = request.getParameter("age");
		
		if(age == null || age.trim().length() == 0) {
			response.setStatus(400);
			out.println("잘못된 입력입니다.");
		} else {
			int ageNum = Integer.valueOf(age);
			
			if (name.length() == 0) {
				response.sendRedirect("./person.jsp");
			} else {
				out.print("(" + name + "," + age + ") 님 환영합니다");
			}
			
		}
	%>
</body>
</html>