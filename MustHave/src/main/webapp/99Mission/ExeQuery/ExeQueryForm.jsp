<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글_ID</title>
</head>
<body>
<h2 style="margin-left: 30px; ">Board_ID</h2>
<div style="display: flex; justify-content:center; align-items:center;">
<form action="ExeQuery2.jsp" method="post" style="width:350px; height:200px; display: flex; 
  flex-direction: column; justify-content:center; ">
	<div style="display:flex; flex-direction:row; justify-content:space-around; ">ID : <input type="text" name="user_id" />
	</div><br/>
	<div style="display:flex; justify-content:center;">
	<input type="submit" value="입력" style="width:30%; margin-top:10px;"/>
	</div>
</form>
</div>
</body>
</html>