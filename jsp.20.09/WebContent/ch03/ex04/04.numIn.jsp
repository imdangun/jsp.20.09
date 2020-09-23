<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<form action='04.numOut.jsp' method='post'>
	<input type='number' name='num'/>
	<input type='submit'/>
</form>
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>