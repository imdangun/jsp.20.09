<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.util.List, java.util.ArrayList' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	request.setCharacterEncoding("utf-8");

	String[] products = request.getParameterValues("product");
	
	if(products != null) {
		List<String> cart = new ArrayList<>();
		for(String product: products) cart.add(product);
		
		session.setAttribute("cart", cart);
	}
%>
<c:redirect url='cartOut.jsp'/>