<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	String num1Str = request.getParameter("num1");
	String num2Str = request.getParameter("num2");
	
	int num1 = Integer.parseInt(num1Str);
	int num2 = Integer.parseInt(num2Str);
%>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %>