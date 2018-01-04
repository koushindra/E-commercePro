package com.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/reset")
public class ResetPasswordServlet extends HttpServlet 
{
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession session=request.getSession(false);
		System.out.println("the session is resetpassword   "+session);

	String code=(String)session.getAttribute("varcode");	
		String vcode=request.getParameter("vcode");
//		System.out.println(" the code is--->"+code+"     \n the vcode is-->"+vcode);
	
		if(code.equals(vcode))
		{
			response.sendRedirect("index.jsp");
		}
		else
		{
			response.getWriter().println("<h1>invalid code <h1>");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
