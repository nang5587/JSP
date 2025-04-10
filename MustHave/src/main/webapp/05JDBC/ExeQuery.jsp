<%@ page import="common.NewJDBConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
<style>
table {
	border: 1px solid;
	border-collapse: collapse;
}

td, tr {
	border: 1px solid;
	padding: 4px 10px;
	text-align: center;
	font-size: medium;
}

.title {
	border: 1px solid;
	border-color: black;
	text-align: center;
	color: white;
	font-weight: bold;
	font-size: large;
	background-color: royalblue;
}
</style>
</head>
<body>
	<h2>회원 목록 조회 테스트(executeQuery() 사용)</h2>
	<%
	NewJDBConnect jdbc = new NewJDBConnect();
		
		String sql = "SELECT id, pass, name, regidate FROM member";
		Statement stmt = jdbc.stmt = jdbc.con.createStatement();
		
		ResultSet rs = jdbc.stmt.executeQuery(sql);
			out.println("<table>");
			out.println("<tr>");
			out.print("<td class = title>");out.print("id");out.print("</td>");
			out.print("<td class = title>");out.print("pw");out.print("</td>");
			out.print("<td class = title>");out.print("name");out.print("</td>");
			out.print("<td class = title>");out.print("regidate");out.print("</td>");
			out.println("</tr>");
		while(rs.next()){
			String id = rs.getString(1);
			String pw = rs.getString(2);
			String name = rs.getString("name");
			java.sql.Date regidate = rs.getDate("regidate");
			out.println("<tr>");
			out.println("<td>");
			out.println(String.format("%s", id));
			out.println("</td>");
			out.println("<td>");
			out.println(String.format("%s", pw));
			out.println("</td>");
			out.println("<td>");
			out.println(String.format("%s", name));
			out.println("</td>");
			out.println("<td>");
			out.println(String.format("%s", regidate));
			out.println("</td>");
			out.println("</tr>");
			
		}
			out.println("</table>");
		jdbc.close();
	%>
</body>
</html>