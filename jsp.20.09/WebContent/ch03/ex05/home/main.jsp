<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8' %>
<!-- 
아이디와 패스워드를 입력해서 로그인한다.
ID/PASSWORD 는 java/java 이다.
위 로그인 정보가 맞으면 로그인 성공한다.
로그인 성공 직후, 화면에서 'java 님 환영합니다.'를 출력한다.
위 화면에 로그아웃 링크를 출력한다.
로그아웃 링크를 클릭하면, 로그인 화면으로 이동한다.

로그인 정보가 틀리면, 로그인 실패한다.
로그인 실패 직후, 로그인 화면으로 이동한다.
위 화면에는 에러 메세지가 출력된다.

위 기능을 attribute, forward 등을 이용해서 구현한다.

main.jsp 
메인화면이다.
로그인 전엔, 로그인 링크를 출력한다.
로그인 후엔, 환영 메세지와 로그아웃 링크를 출력한다.

login.jsp
로그인 폼이다.

loginProc.jsp
로그인 정보를 검증한다.

logout.jsp
로그아웃 처리를 한다.
-->

<%
	Object userId = session.getAttribute("userId");
	if(userId != null) {
%>
		<%= userId %> 님 환영합니다. 
		<a href='logout.jsp'>로그아웃</a>
<%
	} else {
%>
		<a href='login.jsp'>로그인</a>
<%
	}
%>	