<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%!
	int num1 = 1;

	public int add(int num1, int num2) {
		return num1 + num2;
	}
%>
<%
	int num2 = 2;
%>
<%= num1 %> + <%= num2 %> = <%= add(num1, num2) %>