
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Collection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
long add_date = s.parse(request.getParameter("add_date")).getTime();
int add_int = Integer.parseInt(request.getParameter("add_int"));
String add_str = request.getParameter("add_str");

response.addDateHeader("myBirthday", add_date);
response.addIntHeader("myNumber", add_int);
response.addIntHeader("myNumber", 1004);
response.addHeader("myName", add_str);
response.addHeader("myName", URLEncoder.encode("안중근", "UTF-8")); //"안중근" 한글을 인식 못해서 콘솔 오류, 값 저장은 됨, 그래서 예외 메세지가 흐름
//response.addHeader("myName", "안중근"); //"안중근" 한글을 인식 못해서 콘솔 오류, 값 저장은 됨, 그래서 예외 메세지가 흐름
%>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - response</title>
</head>
<body>
	<h2>응답 헤더 정보 출력하기</h2>
	<%
	Collection<String> headerNames = response.getHeaderNames();
	for(String hName : headerNames){
		String hValue = response.getHeader(hName);
	%>
		<li><%= hName %> : <%= URLDecoder.decode(hValue, "UTF-8") %></li>
	<%
	}
	%>
	<h2>myNumber만 출력하기</h2>
	<%
	Collection<String> myNumber = response.getHeaders("myNumber");
	for(String myNum : myNumber){
	%>
		<li>myNumber : <%= myNum %></li>
	<%
	}
	%>
</body>
</html>