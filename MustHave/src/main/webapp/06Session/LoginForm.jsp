<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="Login.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Session</title>
</head>
<body style="width:90%; margin-left:10%;">
<jsp:include page="../Common/Link.jsp" />
<h2>Login Page</h2>
<span style="color: red; font-size:large; margin-left:30px;">
<%= request.getAttribute("LoginErrMsg") == null ?
		"" : request.getAttribute("LoginErrMsg") %>
</span>
<%
if(session.getAttribute("UserId") == null){
%>
<script>
function validateForm(form){
	if(!form.user_id.value)}
	alert("아이디를 입력하세요.");
	return false;
	}
	if(form.user_pw.value == ""){
		alert("패스워드를 입력하세요.");
		return false;
	}
}
</script>
<div>
	<form action="LoginProcess.jsp" method="post" name="loginFrm"
		onsubmit="return validateForm(this);">
		<span>아이디</span>  <input type="text" name="user_id" /><br />
		<span>패스워드</span>  <input type="password" name="user_pw" /><br />
		<div >
			<input type="submit" class="btlog" value="로그인" />
		</div>
	</form>
</div>
<%
} else {
%>
	<div style="display:flex; flex-direction:column; margin-left:30px;">
		<div style="display:flex; flex-direction:row; justify-content:flex-start; align-items:center;"><p style="color:blue; font-weight:bold;"><%= session.getAttribute("UserName") %></p>&nbsp;회원님, 반갑습니다!</div><br/>
		<a href="Logout.jsp">[Logout]</a>
	</div>
<%
}
%>
</body>
</html>