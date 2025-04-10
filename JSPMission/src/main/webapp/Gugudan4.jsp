
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan4</title>
</head>
<body>
<%
int col = Integer.parseInt(request.getParameter("val"));
%>
<div style="display:grid; grid-template-columns:repeat(<%=col%>, 100px);">
<%	for (int i = 2; i < 10; i += col) {%>
<%		for (int j = 0; j < 10; j++) { %>
<%			for (int k = 0; k < col; k++) { %>
<%				if ((i+k) > 9) { %>
		<div></div>
<%		continue;
		}
		if (j == 0) {%>
		<div
			style="text-align: center; border: 1px solid black; background-color: lightgray;">
<%		out.print((i+k) + "단");%>
		</div> 
<%
		continue;
		}
%>
		<div style="text-align: center; border: 1px solid black;">
<%		out.print((i+k) + "*" + j + "=" + j * (i+k));%>
		</div>
<%		} %>
<%	} %>
<%} %>
</div>
</body>
</html>