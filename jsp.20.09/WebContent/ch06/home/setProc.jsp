<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<c:set var='fruit'>사과</c:set>
<c:set var='fruit' scope='page'>포도</c:set>
<c:set var='fruit' scope='request'>딸기</c:set>
<c:set var='fruit' scope='session'>머루</c:set>
<c:set var='fruit' scope='application' value='다래'/>

<jsp:forward page='setOut.jsp'/>