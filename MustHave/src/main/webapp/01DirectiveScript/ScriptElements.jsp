<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!public int add(int num1, int num2) {
		return num1 + num2;
	}

	public int mul(int num1, int num2) {
		return num1 * num2;
	}

	public int sub(int num1, int num2) {
		return num1 - num2;
	}

	public int div(int num1, int num2) {
		return num1 / num2;
	}%>
<html>
<head>
<title>스크립트 요소</title>
</head>
<body>
	<%
	int result = add(10, 20);
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	덧셈 결과 1 : <%=result%> <br />
	덧셈 결과 2 : <%=add(30, 40)%> <br /><br />
	<!-- 
	덧셈 결과 3 :
	<%=add(num1, num2)%>
	<br /> 곱셈 결과 4 :
	<%=mul(num1, num2)%>
	<br /> 뺄셈 결과 5 :
	<%=sub(num1, num2)%>
	<br /> 나눗셈 결과 6 :
	<%=div(num1, num2)%>
	<br />
	 -->
	<%
	out.println("덧셈 결과 1 :" + result + "<br />");
	out.println("덧셈 결과 2 :" + add(30, 40) + "<br />");
	%>
</body>
</html>