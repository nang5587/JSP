<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>회원제 게시판</title>
<script type="text/javascript">
function validateForm(form){
	if(form.title.value == ""){
		alert("제목을 입력하세요.");
		form.title.focus();
		return false;
	}
	if(form.content.value == ""){
		alert("내용을 입력하세요.");
		form.title.focus();
		return false;
	}
}
</script>
</head>
<body style="width:90%; margin-left:10%;">
<jsp:include page="../Common/Link.jsp" />
<h2 style="font-size:large; font-size:x-large; font-weight:bold; margin-left: 30px; margin-bottom:30px; margin-top: 30px;">회원제 게시판 - Write</h2>
<form action="WriteProcess.jsp" name="writeFrm" method="post" onsubmit="return validateForm(this);">
	<table class="table table-striped" style="width:90%;">
	<tr>
		<td>제목</td>
		<td>
			<input type="text" name="title" style="width:90%;" />
		</td>
	</tr>
	<tr>
		<td>내용</td>
		<td>
			<textarea name="content" style="width:90%; height:100px;">
			</textarea>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<button type="submit" style="font-size:small;">작성완료</button>
			<button type="reset" style="font-size:small;">다시입력</button>
			<button type="button" onclick="location.href='List.jsp';" style="font-size:small;">목록</button>
		</td>
	</tr>
	</table>
</form>
</body>
</html>