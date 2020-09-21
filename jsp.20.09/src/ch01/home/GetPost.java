package ch01.home;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ch01/home/add2")
public class GetPost extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {
		int num1 = 1;
		int num2 = 2;
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<h2>" + request.getMethod() + "</h2>");
		out.printf("<p>%d + %d = %d</p>", num1, num2, num1 + num2);
	}
}
