<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:url var='page' value='04.urlA.jsp?num=1'/>

<c:url var='page' value='04.urlA.jsp'>
	<c:param name='num' value='2'/>
</c:url>
<a href='${page}'>이동</a>

<h3>B</h3>
