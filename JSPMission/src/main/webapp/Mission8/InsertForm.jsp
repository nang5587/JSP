<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Form</title>
</head>
<body>
<h2 style="margin-left:30px">Insert Form</h2>
<div style="margin-left:30px; font-weight: bold; font-size:larger; color:blue;">
<%=
request.getAttribute("LoginError") == null ? "" : request.getAttribute("LoginError")
%>
</div>
<script>
function validateForm(form){
	if(!form.id.value){
		alert("아이디를 입력하세요.");
		return false;
	}
	if(!form.pass.value){
		alert("비밀번호를 입력하세요.");
		return false;
	}
}
</script>

<div style="display:flex; justify-content: center; margin-top:100px">
<form action="InsertProcess.jsp" method="get" style="border:1px solid gray; width:300px; padding:20px;"
		onsubmit="return validateForm(this);">
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		아이디 :<input type="text" name="id"/>
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		암호 : <input type="text" name="pass"/>
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		이름 : <input type="text" name="name" />
	</div><br/>
	<div style="display:flex; justify-content:center;"><input type="submit" value="입력" style ="width: 90%;"/></div>
	</form>
</div>
</body>
</html>