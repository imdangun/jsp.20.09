<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%@ page import='java.io.IOException' %>
<%@ page import='com.oreilly.servlet.MultipartRequest' %>
<%@ page import='com.oreilly.servlet.multipart.DefaultFileRenamePolicy' %>
<%@ page import='java.util.Enumeration' %>
<%@ page import='java.util.Map, java.util.HashMap' %>

<%
	String attachPath = "/ch08/attach";
	int fileMaxSize = 5 * 1024 * 1024;
	String enctype = "utf-8";
	
	ServletContext ctx = getServletContext();
	attachPath = ctx.getRealPath(attachPath);
	
	MultipartRequest mRequest = null;
	try {
		mRequest = new MultipartRequest(
				request, attachPath, fileMaxSize, enctype, new DefaultFileRenamePolicy());		
	} catch (IOException e) {
		throw e;
	}
	
	Map<String, String> files = new HashMap<>();
	Enumeration<String> fileNames = mRequest.getFileNames();
	
	String fileName = null;
	while(fileNames.hasMoreElements()) {
		fileName = fileNames.nextElement();
		System.out.println(fileName);
		files.put(mRequest.getFilesystemName(fileName), mRequest.getOriginalFileName(fileName));
	}
	
	request.setAttribute("files", files);
%>
<jsp:forward page='fileOut.jsp'/>