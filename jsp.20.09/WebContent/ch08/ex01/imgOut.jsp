<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<a href='main.html'>메인</a> <hr>
제목: ${title} <br>
<c:choose>
	<c:when test='${empty attachName}'>
		이미지가 없습니다.
	</c:when>
	<c:otherwise>
		<img src='../attach/${attachName}'/>
	</c:otherwise>
</c:choose>