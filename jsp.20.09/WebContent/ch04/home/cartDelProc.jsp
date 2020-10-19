<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%
	request.setCharacterEncoding("utf-8");
	String product = request.getParameter("product");
	
	if(product != null) {
		String cart = "";
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie: cookies)
			if(cookie.getName().equals("cart"))
				cart = cookie.getValue();
		
		cart = cart.replaceFirst(product + "/", "");
		
		Cookie cookie = new Cookie("cart", cart);
		response.addCookie(cookie);
%>
		<c:redirect url='cartOut.jsp'/>
<%
	} else {
%>	
		<c:redirect	url='cartOut.jsp?msg=select a prouduct.'/>
<%
	}
%>		