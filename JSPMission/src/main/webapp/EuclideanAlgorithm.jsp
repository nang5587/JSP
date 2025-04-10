
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>최대공약수, 최소공배수</title>
</head>
<body>
<%
	String num1 = request.getParameter("num1");
	String num2 = request.getParameter("num2");
	int GCD = 0;
	int LCM = 0;
	if(num1 != null && num2 != null){
		int n1 = Integer.parseInt(num1);
		int n2 = Integer.parseInt(num2);
		int mul = n1*n2;
		if(n1 - n2 <= 0) {
			int temp = n1;
			n1 = n2;
			n2 = temp;
		}
		int tm = 1;
		while(tm != 0){
			tm = n1 % n2;
			n1 = n2;
			n2 = tm;
			if(n2 == 0){
				GCD = n1;
				LCM = mul/n1;
			}
		}
	}
%>
<h2 style="margin-left:30px">GCD, LCM</h2>
<div style="display:flex; justify-content: center; margin-top:100px">
	<form method="get" style="border:1px solid gray; width:300px; padding:20px;">
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		숫자1 :<input type="number" value="<%= num1%>" name="num1" placeholder="숫자를 입력하세요." min="2"/>
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		숫자2 : <input type="number" value="<%= num2%>" name="num2" placeholder="숫자를 입력하세요." min="2"/>
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		최대공약수 : <input type="text" name="GCD" value="<%= GCD %>" readonly />
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-between;">
		최소공배수 : <input type="text" name="LCM" value="<%= LCM %>" readonly/>
	</div><br/>
	<div style="display:flex; justify-content:center;"><input type="submit" value="실행" style ="width: 90%;"/></div>
	</form>
</div>
</body>
</html>