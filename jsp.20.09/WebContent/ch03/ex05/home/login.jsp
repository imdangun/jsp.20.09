<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<form action='loginProc.jsp' method='post'>
	ID: <input type='text' name='userId'/>
	PW: <input type='password' name='userPw'/>
	<button type='submit'>로그인</button>
</form>
<%
	Object msg = request.getAttribute("msg");
	if(msg != null) out.println(msg);
%>