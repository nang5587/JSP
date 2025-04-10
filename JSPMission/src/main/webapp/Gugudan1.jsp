<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan1</title>
</head>
<body>
<%
for(int i = 2; i<10; i++){
	out.println("<h2>" + i + "단</h2><br/>");
	for(int j = 1; j<10; j++){
		out.println(i + "*" + j + " = " + i*j + "<br/>");
	}
	out.print("<br />");
}
%>
</body>
</html>