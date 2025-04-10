<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudan3</title>
</head>
<body>
<%
int j = Integer.parseInt(request.getParameter("val"));
%>
<%
if(j != 2){
out.println(j + "단 입니다.<br/>");
for(int i=1; i<10; i++){
	out.println(j + "*" + i + "=" + j*i + "<br/>");
}
}
else{
	for(int i=1; i<10;i++){
		out.println("2 * " + i + "=" + 2*i + "<br/>");
	}
}
%>
</body>
</html>