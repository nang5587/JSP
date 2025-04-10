<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
<style>a{text-decoration: none;}</style>
</head>
<body style="width:90%; margin-left:5%;">
<h2 style="font-size:x-large; font-weight:bold; margin:30px;">파일 첨부형 게시판 - List</h2>

<form method="get" style="width:100%">
	<table style="margin-bottom:30px; width:90%;">
	<tr>
		<td align="center">
			<select name="searchField" style="width:5%">
				<option value="title">제목</option>
				<option value="content">내용</option>
			</select>
			<input type="text" name="searchWord" style="width:40%" />
			<input type="submit" value="검색" style="width:5%"/>
		</td>
	</tr>
	</table>
</form>

<table class="table table-hover" width="90%">
<tr>
	<th width="10%" style="text-align:center; background-color: lemonchiffon;">번호</th>
	<th width="*" style="background-color: lemonchiffon;">제목</th>
	<th width="15%" style="text-align:center; background-color: lemonchiffon;">작성자</th>
	<th width="10%" style="text-align:center; background-color: lemonchiffon;">조회수</th>
	<th width="15%" style="text-align:center; background-color: lemonchiffon;">작성일</th>
	<th width="8%" style="text-align:center; background-color: lemonchiffon;">첨부</th>
</tr>
<c:choose>
	<c:when test="${empty boardLists }">
		<tr>
			<td colspan="6" align="center">
				등록된 게시물이 없습니다.
			</td>
		</tr>
	</c:when>
	<c:otherwise>
		<c:forEach items="${boardLists }" var="row" varStatus="loop">
		<tr align="center">
			<td>
				${map.totalCount - (((map.pageNum-1)* map.pageSize) + loop.index)}
			</td>
			<td align="left">
				<a href="../mvcboard/view.do?idx=${row.idx }">${row.title }</a>
			</td>
			<td>${row.name }</td>
			<td>${row.visitcount }</td>
			<td>${row.postdate }</td>
			<td>
				<c:if test="${ not empty row.ofile }">
					<a href="../mvcboard/download.do?ofile=${ row.ofile }&sfile=${row.sfile}&idx=${row.idx}">[Down]</a>
				</c:if>
			</td>
		</tr>
		</c:forEach>
	</c:otherwise>
</c:choose>
</table>

<table width="90%" style="margin-top:30px;">
<tr align="center">
	<td>${map.pagingImg }</td>
	<td width="100">
		<button type="button" onclick="location.href='../mvcboard/write.do';">글쓰기
	</td>
</tr>
</table>
</body>
</html>