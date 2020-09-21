<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<ul>
	<li><%= request.getContextPath() %>
	<li><%= request.getMethod() %>
	<li><%= request.getRequestURL() %>
	<li><%= request.getRequestURI() %>
	<li><%= request.getQueryString() %>
	<li><%= request.getServerName() %>
	<li><%= request.getProtocol() %>
</ul>