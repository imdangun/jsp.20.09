<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='ch05.service.today.TodayService, ch05.service.today.TodayServiceImpl' %>
<%
	TodayService todayService = new TodayServiceImpl();
%>
<%= todayService.getCurrentDate() %>