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
<title>Board_musthave</title>
<style>
table {
	border: 1px solid;
	border-collapse: collapse;
}

td, tr {
	border: 1px solid;
	padding: 4px 10px;
	text-align: center;
}

.title {
	text-align: center;
	background-color: lightgray;
}
</style>
</head>
<body>
<h2>Board_musthave님</h2>
<%
NewJDBConnect jdbc = new NewJDBConnect();
	
	String sql = "SELECT num, title, id, postdate, visitcount FROM board where id like 'musthave'";
	Statement stmt = jdbc.stmt = jdbc.con.createStatement();
	
	ResultSet rs = jdbc.stmt.executeQuery(sql);
	out.print("<table>");
	out.print("<tr>");
	out.print("<td class = title>");out.print("Num");out.print("</td>");
	out.print("<td class = title>");out.print("Title");out.print("</td>");
	out.print("<td class = title>");out.print("Name");out.print("</td>");
	out.print("<td class = title>");out.print("Postdate");out.print("</td>");
	out.print("<td class = title>");out.print("Visitcount");out.print("</td>");
	out.print("</tr>");
	while(rs.next()){
		String num = rs.getString(1);
		String title = rs.getString(2);
		String name = rs.getString("id");
		java.sql.Date postdate = rs.getDate("postdate");
		String visitcount = rs.getString("visitcount");
		out.print("<tr>");
		out.print("<td>");out.print(String.format("%s", num));out.print("</td>");
		out.print("<td>");out.print(String.format("%s", title));out.print("</td>");
		out.print("<td>");out.print(String.format("%s", name));out.print("</td>");
		out.print("<td>");out.print(String.format("%s", postdate));out.print("</td>");
		out.print("<td>");out.print(String.format("%s", visitcount));out.print("</td>");
		out.print("</tr>");
	}
	out.print("</table>");
	jdbc.close();
%>
</body>
</html>