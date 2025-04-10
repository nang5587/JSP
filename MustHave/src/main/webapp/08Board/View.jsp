<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");

BoardDAO dao = new BoardDAO(application);
dao.updateVisitCount(num);
BoardDTO dto = dao.selectView(num);
dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>회원제 게시판</title>
<script>
function deletePost(){
	var confirmed = confirm("정말로 삭제하겠습니까?");
	if(confirmed){
		var form = document.writeFrm;
		form.method = "post";
		form.action = "DeleteProcess.jsp";
		form.submit();
	}
}
</script>
</head>
<body style="width:90%; margin-left:10%;">
<jsp:include page="../Common/Link.jsp" />
<h2 style="font-size:large; font-size:x-large; font-weight:bold; margin-left: 30px; margin-bottom:30px; margin-top: 30px;">회원제 게시판 - 상세보기</h2>
<form name="writeFrm">
	<input type="hidden" name="num" value="<%=num%>" />
	<table class="table table-striped" style="width:90%;">
	<tr>
		<td style="font-weight:bold; text-align:center;">번호</td>
		<td><%= dto.getNum() %></td>
		<td style="font-weight:bold; text-align:center;">작성자</td>
		<td><%= dto.getName() %></td>
	</tr> 
	<tr>
		<td style="font-weight:bold; text-align:center;">작성일</td>
		<td><%= dto.getPostdate() %></td>
		<td style="font-weight:bold; text-align:center;">조회수</td>
		<td><%= dto.getVisitcount() %></td>
	</tr>
	<tr>
		<td style="font-weight:bold; text-align:center;">제목</td>
		<td colspan="3"><%= dto.getTitle() %></td>
	</tr>
	<tr>
		<td style="font-weight:bold; text-align:center;">내용</td>
		<td colspan="3" height="100">
		<%= dto.getContent().replace("\r\n", "<br/>") %></td>
	</tr>
	<tr>
		<td colspan="4" align="center">
			<%
			if(session.getAttribute("UserId") != null
				&& session.getAttribute("UserId").toString().equals(dto.getId())){
			%>
			<button type="button" onclick="location.href='Edit.jsp?num=<%= dto.getNum() %>';" style="font-size:small;">수정
			</button>
			<button type="button" onclick="deletePost();" style="font-size:small;">삭제</button>
			<%
			}
			%>
			<button type="button" onclick="location.href='List.jsp';"
					style="font-size:small;">
			목록
			</button>
		</td>
	</tr>
	</table>
</form>
</body>
</html>