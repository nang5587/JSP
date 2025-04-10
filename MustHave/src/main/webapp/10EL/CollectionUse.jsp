<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어(EL) - 컬렉션</title>
</head>
<body>
<h2>List 컬렉션</h2>
<%
List<Object> aList = new ArrayList<Object>();
aList.add("청해진");
aList.add(new Person("장보고", 28));
pageContext.setAttribute("Ocean", aList);
%>
<ul>
	<li>0번째 요소 : ${ Ocean[0] }</li>
	<li>1번째 요소 : ${ Ocean[1].name }, ${ Ocean[1].age }</li>
	<li>2번째 요소 : ${ Ocean[2] }</li>
</ul>
<h2>Map 컬렉션</h2>
<%
Map<String , String> map = new HashMap<>();
map.put("韓國", "대한민국");
map.put("Eng", "English");
pageContext.setAttribute("King", map);
%>
<ul>
	<li>영문 key : ${ King["Eng"] }, ${ King['Eng']}, ${ King.Eng } </li>
	<li>한글 key : ${ King["韓國"] }, ${ King['韓國']}, ${ King.韓國 } </li>
</ul>
</body>
</html>