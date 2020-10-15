<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:if test='${param.color == 1}'>빨강</c:if>
<c:if test='${param.color == 2}'>파랑</c:if>
<c:if test='${param.color == 3}'>노랑</c:if>
<c:if test='${param.color == 1}'>빨빨강</c:if>