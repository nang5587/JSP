<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="Form.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<header>
<h2>Login</h2>
</header>
<div style="display: flex; justify-content:center; align-items:center;">
<form action="ExeUpdateMember.jsp" method="post" style="width:350px; height:200px; display: flex; 
  flex-direction: column; justify-content:center; ">
	<div style="display:flex; flex-direction:row; justify-content:space-around; ">ID : <input type="text" name="user_id" />
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-around; ">Pass : <input type="text" name="user_pass" />
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-around;  ">Name : <input type="text" name="user_name" />
	</div><br/>
	<div style="display:flex; justify-content:center;">
	<input type="submit" value="로그인" style="width:30%; margin-top:10px;"/>
	</div>
</form>
</div>
</body>
</html>