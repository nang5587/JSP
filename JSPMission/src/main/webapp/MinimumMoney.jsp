<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MinMoney</title>
</head>
<body>
<%
String num1 = request.getParameter("pay");
int n = 0;
int M5 = 0;
int M1 = 0;
int m5 = 0;
int m1 = 0;
int allDisc = 0;
if(num1 != null){
	n = Integer.parseInt(num1);
	M5 = n/50000;
	n = n%50000;
	M1 = n/10000;
	n = n%10000;
	m5 = n/5000;
	n = n%5000;
	m1 = n/1000;
	allDisc = (M5*50000)+(M1*10000)+(m5*5000)+(m1*1000);
}
%>
<h2 style="margin-left:30px">Minimum Money</h2>
<div style="display:flex; justify-content: center; margin-top:100px">
	<form method="get" style="border:1px solid gray; width:300px; padding:20px;">
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		지불금액 :<input type="number" name="pay" value="<%= num1%>" placeholder="숫자를 입력하세요." min="0"/>
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		할인금액 : <input type="number" name="disc" value="<%= allDisc%>" readonly/>
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		오만원권 : <input type="text" name="오만" value="<%= M5%>" readonly />
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		일만원권 : <input type="text" name="일만" value="<%= M1%>" readonly/>
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		오천원권 : <input type="text" name="오천" value="<%= m5%>" readonly/>
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		일천원권 : <input type="text" name="일천" value="<%= m1%>" readonly/>
	</div><br/>
	<div style="display:flex; justify-content:center;"><input type="submit" value="실행" style ="width: 90%;"/></div>
	</form>
</div>
</body>
</html>