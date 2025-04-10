<%@ page import="java.util.List"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="model1.board.BoardDAO"%>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
BoardDAO dao = new BoardDAO(application);

Map<String, Object> param = new HashMap<String, Object>();
String searchField = request.getParameter("searchField");
String searchWord = request.getParameter("searchWord");
if(searchWord != null){
	param.put("seachField", searchField);
	param.put("seachWord", searchWord);
}

int totalCount = dao.selectCount(param);
List<BoardDTO> boardLists = dao.selectList(param);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>회원제 게시판</title>
</head>
<body style="width:90%; margin-left:10%;">
	<jsp:include page="../Common/Link.jsp" />
	<h2 style="font-size:large; font-size:x-large; font-weight:bold; margin:30px;">List</h2>
	<form method="get">
	<table  style="margin-bottom:30px; width:90%;">
	<tr>
		<td align="center">
			<select name="searchField">
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
			<input type="text" name="searchWord" />
			<input type="submit" value="검색" />
		</td>
	</tr>
	</table>
	</form>
	
	<table class="table table-striped table-hover" style="width:90%;">
	<tr style="background-color:aliceblue;">
		<th width="10%" style="text-align:center;">번호</th>
		<th width="50%">제목</th>
		<th width="15%" style="text-align:center;">작성자</th>
		<th width="10%" style="text-align:center;">조회수</th>
		<th width="15%" style="text-align:center;">작성일</th>
	</tr>
<%
if(boardLists.isEmpty()){
%>
	<tr>
		<td colspan="5" align="center">
			등록된 게시물이 없습니다^^*
		</td>
	</tr>
<%
}
else{
	int virtualNum = 0;
	for(BoardDTO dto : boardLists){
		virtualNum = totalCount--;
%>
	<tr align="center">
		<td><%= virtualNum %></td>
		<td align="left">
			<a href="View.jsp?num=<%= dto.getNum() %>" style="text-decoration-line: none; color: inherit;"><%= dto.getTitle() %></a>
		</td>
		<td align="center"><%= dto.getId() %></td>
		<td align="center"><%= dto.getVisitcount()%></td>
		<td align="center"><%= dto.getPostdate() %></td>
	</tr>
<%
	}
}
%>
	</table>
	
	<table width="90%" style="margin-top:30px;">
	<tr align="right">
		<td><button type="button" onclick="location.href='Write.jsp';" style="font-size:small; margin-bottom:30px;">글쓰기
			</button></td>
	</tr>
	</table>
</body>
</html>