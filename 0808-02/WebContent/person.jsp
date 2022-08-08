<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		입력폼 사용자 나이, 이름 필수!!
	 -->
	 <form>
		 <label>이름 : <input type = "text" name = "name" required/></label>
		 <label>나이 : <input type = "number" name = "age" required/></label>
		 <input type = "submit" value = "전송"/>
	</form>
</body>
</html>