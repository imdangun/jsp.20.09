<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<meta charset='utf-8'>
<h3>상품</h3>
<form action='cartProc.jsp' method='post'>
	<ul>
		<li>노트북 <input type='radio' name='product' value='노트북'></li>
		<li>모니터 <input type='radio' name='product' value='모니터'></li>
		<li>마우스 <input type='radio' name='product' value='마우스'></li>
		<li>메모리 <input type='radio' name='product' value='메모리'></li>
	</ul>
	<button type='submit'>담기</button>
	<button type='submit' formaction='cartOut.jsp'>보기</button>
</form>
<%
	String msg = request.getParameter("msg");
	if(msg != null) out.println(msg);
%>