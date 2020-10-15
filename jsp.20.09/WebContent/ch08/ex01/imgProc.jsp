<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.io.IOException' %>
<%@ page import='com.oreilly.servlet.MultipartRequest' %>
<%@ page import='com.oreilly.servlet.multipart.DefaultFileRenamePolicy' %>

<%
	String attachPath = "/ch08/attach";
	int fileMaxSize = 5 * 1024 * 1024;
	String enctype = "utf-8";
	
	ServletContext ctx = getServletContext();
	attachPath = ctx.getRealPath(attachPath);
	System.out.println("attachPath: " + attachPath);
	
	request.setCharacterEncoding("utf-8");
	MultipartRequest mRequest = null;
	
	try {
		mRequest = new MultipartRequest(
				request, attachPath, fileMaxSize, enctype, new DefaultFileRenamePolicy());
	} catch (IOException e) {
		throw e;
	}
	
	request.setAttribute("title", mRequest.getParameter("title"));
	request.setAttribute("attachName", mRequest.getFilesystemName("attachFile"));
%>
<jsp:forward page='imgOut.jsp'/>