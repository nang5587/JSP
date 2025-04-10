<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Myservlet05</h2>
<c:forEach items="${list }" var="dto">
	<li>${dto.num }, ${dto.nat }, ${dto.cp }</li><br/>
</c:forEach>
</body>
</html>