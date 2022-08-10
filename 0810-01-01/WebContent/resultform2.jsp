<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${ not empty map }">	<!--  -->
		<ul>
			<c:forEach var="map" items="${ map }">		<!-- items에서 하나씩 꺼내서 country라는 이름으로 바꿈. items는 list set map 배열 다 가능하다.-->
				<li>${ map.key } ${ map.value }</li>
			</c:forEach>
		</ul>
	</c:if>
</body>
</html>