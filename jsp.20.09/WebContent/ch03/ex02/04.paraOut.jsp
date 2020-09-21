<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	String text = request.getParameter("text");
	String number = request.getParameter("number");
	String date = request.getParameter("date");
	String radio = request.getParameter("radio");
	String checkbox = request.getParameter("checkbox");
%>
text: <%= text %> <br>
number: <%= number %> <br>
date: <%= date %> <br>
radio: <%= radio %> <br>
checkbox: <%= checkbox %>