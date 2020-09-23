<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='ch03.ex05.User' %>
<a href='05.main.jsp'>메인</a>
<%
	session.setAttribute("user", new User("최한석", 12));
%>