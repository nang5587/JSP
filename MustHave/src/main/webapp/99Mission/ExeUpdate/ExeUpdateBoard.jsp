<%@ page import="common.NewJDBConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
<%
NewJDBConnect jdbc = new NewJDBConnect();
	String id = request.getParameter("user_id");
	String title = request.getParameter("user_title");
	String content = request.getParameter("user_content");
	
	String sql = "INSERT INTO board (title, content, id, visitcount) VALUES (?, ?, ?,0)";
	PreparedStatement psmt = jdbc.con.prepareStatement(sql);
	psmt.setString(1, title);
	psmt.setString(2, content);
	psmt.setString(3, id);
	
	int inResult = psmt.executeUpdate();
	out.println(inResult + "행이 입력되었습니다.");
	
	jdbc.close();
%>
</body>
</html>