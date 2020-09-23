<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<!-- 
다음이나 네이버를 선택하고, 폼을 제출하면, 해당 사이트로 이동한다.
폼을 작성하지 않고 제출하면, 폼으로 되돌아온다.
되돌아온 경우, 폼 아래에 입력 안내 메세지를 출력한다.
 -->
<form action='siteProc.jsp'>
	<input type='radio' name='site' value='daum'/>다음
	<input type='radio' name='site' value='naver'/>네이버
	<input type='submit'/>
</form> 
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>