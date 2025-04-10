<%@ page import="membership.NewMemberDTO" %>
<%@ page import="membership.NewMemberDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String UserId = request.getParameter("id");
String UserPass = request.getParameter("pass");

String driver = application.getInitParameter("MySQLDriver");
String url = application.getInitParameter("MySQLURL");
String id = application.getInitParameter("MySQLId");
String pwd = application.getInitParameter("MySQLPwd");



NewMemberDAO dao = new NewMemberDAO(driver, url, id, pwd);
NewMemberDTO memberDTO = dao.getMemberDTO(UserId, UserPass);
dao.close();

if(memberDTO.getId() != null){
	session.setAttribute("UserId", memberDTO.getId());
	session.setAttribute("UserName", memberDTO.getName());
	response.sendRedirect("InsertSuccess.jsp");
}
else {
	request.setAttribute("LoginError", "가입 실패");
	request.getRequestDispatcher("InsertForm.jsp").forward(request, response);
}
%>