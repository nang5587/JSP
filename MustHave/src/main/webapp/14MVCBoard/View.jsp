<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
</head>
<body style="width:90%; margin-left:5%;">
<h2 style="font-size:large; font-size:x-large; font-weight:bold; margin-left: 30px; margin-bottom:30px; margin-top: 30px;">
	파일 첨부형 게시판 - View
</h2>

<table class="table" width="90%">
	<colgroup>
		<col width="15%"/><col width="35%"/>
		<col width="15%"/><col width="*"/>
	</colgroup>
	
	<tr>
		<td style="text-align:center; background-color: lemonchiffon; font-weight:bold;">번호</td><td>${ dto.idx }</td>
		<td style="text-align:center; background-color: lemonchiffon; font-weight:bold;">작성자</td><td>${ dto.name }</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color: lemonchiffon; font-weight:bold;">작성일</td><td>${ dto.postdate }</td>
		<td style="text-align:center; background-color: lemonchiffon; font-weight:bold;">조회수</td><td>${ dto.visitcount }</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color: lemonchiffon; font-weight:bold;">제목</td>
		<td colspan="3">${dto.title}</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color: lemonchiffon; font-weight:bold;">내용</td>
		<td colspan="3" height="100">${ dto.content }
			<c:if test="${ not empty dto.ofile and isImage eq true }">
				<br><img src="../Uploads/${dto.sfile }" style="max-width:100%;" />
			</c:if>
		</td>
	</tr>
	
	<tr>
		<td style="text-align:center; background-color: lemonchiffon; font-weight:bold;">첨부 파일</td>
		<td>
			<c:if test="${not empty dto.ofile }">
			${dto.ofile }
			<a href="../mvcboard/download.do?ofile=${dto.ofile }&sfile=${dto.sfile}&idx=${dto.idx}">
			[다운로드]
			</a>
			</c:if>
		</td>
		<td style="text-align:center; background-color: lemonchiffon; font-weight:bold;">다운로드수</td>
		<td>${dto.downcount }</td>
	</tr>
	
	<tr>
		<td colspan="4" align="center" >
			<button style="margin:10px; background-color: lemonchiffon; border-color:gray;" type="button" onclick="location.href='../mvcboard/pass.do?mode=edit&idx=${param.idx}';">
				수정
			</button>
			<button style="margin:10px; background-color: lemonchiffon; border-color:gray;" type="button" onclick="location.href='../mvcboard/pass.do?mode=delete&idx=${param.idx}';">
				삭제
			</button>
			<button style="margin:10px; background-color: lemonchiffon; border-color:gray;" type="button" onclick="location.href='../mvcboard/list.do';">
				목록
			</button>
		</td>
	</tr>
</table>
</body>
</html>