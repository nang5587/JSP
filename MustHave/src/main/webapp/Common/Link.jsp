<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table style="background-color:midnightblue;" width="90%">
  <tr align="center" style="height:50px; display:flex; justify-content:space-around; align-items:center;">
    <td align="center">
    <%
    if(session.getAttribute("UserId") == null){
    %>
    	<a href="../06Session/LoginForm.jsp" style="text-decoration-line: none; color: inherit; font-weight:bold; font-size:large; color:white;">Login</a>
    <%
    } else {
    %>
    <a href="../06Session/Logout.jsp" style="text-decoration-line: none; color: inherit; font-weight:bold; font-size:large; color:white;">Logout</a>
    <%
    }
    %>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="../08Board/List.jsp" style="text-decoration-line: none; color: inherit; font-weight:bold; font-size:large; color:white;">List</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="../09PagingBoard/List.jsp" style="text-decoration-line: none; color: inherit; font-weight:bold; font-size:large; color:white;">Paging</a>
    </td>
  </tr>
</table>