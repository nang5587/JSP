<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 영역</title>
</head>
<body>
	<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
	<%
	@SuppressWarnings("unchecked")
	ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
	if(lists != null){
	for(String str : lists)
		out.print(str + "<br/>");
	}
	else{
		out.print("lists is null!");
	}
	%>
</body>
</html>