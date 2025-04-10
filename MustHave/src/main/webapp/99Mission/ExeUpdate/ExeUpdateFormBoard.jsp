<%@ page import="common.JDBConnect" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
</head>
<body>
<h2 style="margin-left: 30px; ">Board</h2>
<%
JDBConnect jdbc = new JDBConnect();
	String sql = "SELECT id FROM member";
	Statement stmt = jdbc.stmt = jdbc.con.createStatement();
	ResultSet rs = jdbc.stmt.executeQuery(sql);
%>
<div style="display: flex; justify-content:center; align-items:center;">
<form action="ExeUpdateBoard.jsp" method="post" style="width:350px; height:200px; display: flex; 
  flex-direction: column; justify-content:center; ">
	<div style="display:flex; flex-direction:row; justify-content:space-around; ">
	ID : <select name="user_id">
<%
	while(rs.next()){
		String id = rs.getString("id");
			out.print("<option>");
			out.print(id);
			out.print("</option>");
	}		
%>
	</select>
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-around; ">Title : <input type="text" name="user_title" placeholder="제목을 입력하세요." />
	</div><br/>
	<div style="display:flex; flex-direction:row; justify-content:space-around;  ">Content : <textarea name="user_content" placeholder="내용를 입력하세요."></textarea>
	</div><br/>
	<div style="display:flex; justify-content:center;">
	<input type="submit" value="업로드" style="width:30%; margin-top:10px;"/>
	</div>
</form>
</div>
</body>
</html>