<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:out value='${fruit}'/> <br>
<c:out value='${pageScope.fruit}'/> <br>
<c:out value='${requestScope.fruit}'/> <br>
<c:out value='${sessionScope.fruit}'/> <br>
<c:out value='${applicationScope.fruit}'/>