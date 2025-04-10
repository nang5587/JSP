<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudanProc</title>
</head>
<body>
<%
String sel = request.getParameter("sel");
String val = request.getParameter("val");

if(sel.equalsIgnoreCase("1")){
	response.sendRedirect("Gugudan1.jsp");
} else if(sel.equalsIgnoreCase("2")){
	response.sendRedirect("Gugudan2.jsp");
} else if(sel.equalsIgnoreCase("3")){
	response.sendRedirect("Gugudan3.jsp?val=" + val);
} else{
	response.sendRedirect("Gugudan4.jsp?val=" + val);
}
%>
</body>
</html>