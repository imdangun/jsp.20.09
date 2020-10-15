<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
\${5 + 2}: ${ 5 + 2 } <br>
${ 5 > 2 } <br>
${ 5 > 2 ? 5 : 2 } <br>
${ 5 > 2 || 5 < 2 } <br>

<%
	pageContext.setAttribute("userName", "최한석");
%>
1: ${userName}, ${empty userName } <br>
