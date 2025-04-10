<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugudanForm</title>
</head>
<body>
<div>
	<form action="./GugudanProc.jsp" method="get">
	<input type="radio" name="sel" value="1" checked="checked"/>
	Type1 : 세로 <br/>
	<input type="radio" name="sel" value="2"/>
	Type2 : 가로 <br/>
	<input type="radio" name="sel" value="3"/>
	Type3 : 하나만 출력 <br/>
	<input type="radio" name="sel" value="4"/>
	Type4 : 여러개씩 묶어서 출력 <br/>
	<input type="number" name="val"/>
	단수/열수 <br/>
	<input type="submit" value="선택"  style="margin-top:10px;"/>
	</form>
</div>
</body>
</html>