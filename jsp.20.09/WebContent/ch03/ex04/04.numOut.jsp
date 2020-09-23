<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	String numStr = request.getParameter("num");
	
	try {
		int num = Integer.parseInt(numStr);	
%>
		<%= num * 2 %>
		<a href='04.numIn.jsp'>돌아가기</a>
<%
	} catch(NumberFormatException e) {
%>		 
		<c:redirect url='04.numIn.jsp?msg=Input Number.'/>
<%
	}
%>		
		