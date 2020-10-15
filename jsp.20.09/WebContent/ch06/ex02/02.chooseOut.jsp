<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:choose>
	<c:when test='${param.color == 1}'>빨강</c:when>
	<c:when test='${param.color == 2}'>파랑</c:when>
	<c:when test='${param.color == 3}'>노랑</c:when>
	<c:when test='${param.color == 1}'>빨빨강</c:when>
</c:choose>