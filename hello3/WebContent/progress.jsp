<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>
</head>
<body>
	<p>로그인 처리 요청이 전달되었나요?</p>	
	<%
		String id = request.getParameter("userid");
		
		// 입력값이 있으면 xx님 반갑습니다. 없으면 
		// 해당 파라미터 값이 전달 되었으니 입력값이 없으면 ""로 나온다.
		
		// 파라미터 이름이 없으면 null
		// 없는거 달라하면 null, 아무것도 없는거 제출하면 ""로 나온다.
		if(id.length() > 0) {
			out.println(id + "님 반갑습니다.");
		} else {
			out.println("입력하세요");
			response.sendRedirect("./login.jsp");
		}
	%>
</body>
</html>