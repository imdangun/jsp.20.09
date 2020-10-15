<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import='java.util.Map, java.util.HashMap' %>
<%@ page import='java.util.Set, java.util.HashSet' %>
<a href='main.html'>메인</a> <hr>
<%
	Map<String, String> files = (Map<String, String>)request.getAttribute("files");
	
	Set<String> fileNames = files.keySet();
	for(String fileName: fileNames) {
%>
		<a href='../attach/<%= fileName %>'><%= files.get(fileName) %></a>
<%  
	}
%>		