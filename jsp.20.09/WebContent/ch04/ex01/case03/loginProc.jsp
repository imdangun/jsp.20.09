<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	String userId = request.getParameter("userId");
	String isStoreId = request.getParameter("isStoreId");
	
	session.setAttribute("userId", userId);
	
	if(isStoreId != null && isStoreId.equals("true")) {
		Cookie cookie = new Cookie("userId", userId);
		cookie.setMaxAge(20);
		response.addCookie(cookie);
	}
%>
<jsp:forward page='main.jsp'/>