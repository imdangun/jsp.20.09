<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	Cookie cookie = new Cookie("name", "최한석");
	response.addCookie(cookie);
	response.setCharacterEncoding("utf-8");
%>
<c:redirect url='cookieOut.jsp'/>