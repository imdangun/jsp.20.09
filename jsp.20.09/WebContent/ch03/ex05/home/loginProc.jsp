<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	String userId = request.getParameter("userId");
	String userPw = request.getParameter("userPw");
	
	if(userId.equals("java") && userPw.equals("java")) {
		session.setAttribute("userId", userId);		
%>
		<jsp:forward page='main.jsp'/>
<%

	} else {
		request.setAttribute("msg", "ID 와 PW를 확인해 주세요.");
%>
		<jsp:forward page='login.jsp'/>
<%
	}
%>				