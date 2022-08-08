<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 날짜를 알려주는 창입니다</title>
</head>
<body>
	<p>안녕하세요 오늘의 날짜를 알려드릴게요</p>
	<button> 클릭하면 날짜보여요</button>
	<p id = "today"><%= LocalDate.now()%></p>
</body>
</html>