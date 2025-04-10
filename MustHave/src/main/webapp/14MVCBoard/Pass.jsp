<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="UTF-8">
<title>파일 첨부형 게시판</title>
<script type="text/javascript">
	function validateForm(form){
		if(form.pass.value == ""){
			alert("비밀번호를 입력하세요.");
			form.pass.focus();
			return false;
		}
	}
</script>
</head>
<body style="width:90%; margin-left:5%;">
<h2 style="font-size:large; font-size:x-large; font-weight:bold; margin-left: 30px; margin-bottom:30px; margin-top: 30px;">파일 첨부형 게시판 - Pass</h2>
<form name="writeFrm" method="post" action="../mvcboard/pass.do" onsubmit="return validateForm(this);">
	<input type="hidden" name="idx" value="${param.idx }"/>
	<input type="hidden" name="mode" value="${param.mode }"/>
	<table class="table" style="width:90%;">
	<tr>
		<td style="text-align:center; background-color: lemonchiffon; font-weight:bold; width:30%">비밀번호</td>
		<td>
			<input type="password" name="pass" style="width:100px;" />
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<button style="margin:10px; background-color: lemonchiffon; border-color:gray;" type="submit">완료</button>
			<button style="margin:10px; background-color: lemonchiffon; border-color:gray;" type="reset">삭제</button>
			<button style="margin:10px; background-color: lemonchiffon; border-color:gray;" type="button" onclick="location.href='../mvcboard/list.do';">목록</button>
		</td>
	</tr>
	</table>
</form>
</body>
</html>