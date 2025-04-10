<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan2</title>
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
	<%
	int k;
	%>
	<%
	out.print("<table>");
	out.print("<tr>");
	for (k = 2; k < 10; k++) {
		out.print("<td class = title>" + k + "단</td>");
	}
	out.print("</tr>");
	
	for(int i=1;i<10; i++){
	out.print("<tr>");
	for (int j=2; j<10; j++){
		out.print("<td>" + j + "*" + i + "=" + i*j + "</td>");
	}
	out.print("</tr>");
	}
	out.print("</table>");
	%>
</body>
</html>