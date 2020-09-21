<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<%
	String gender = request.getParameter("gender");
	String[] letters = request.getParameterValues("letter");
	String[] jobs = request.getParameterValues("job");
%>
<h3>입력정보</h3>
<%
	if(gender != null && letters != null && jobs != null) {
%>
		성별: <%= gender %> <br>
		수신: <%  for(String letter: letters) { %>
					<%= letter %>&nbsp;
			  <%  } %> <br>
		직업: <% for(String job: jobs) out.print(job + " "); %> 
<%
	}
%>
