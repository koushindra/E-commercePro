package com.info.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.info.model.User;
import com.info.service.UserService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		
		String email=request.getParameter("user_email");
		String password=request.getParameter("user_password");
		
		User user=new User();
		user.setUser_email(email);
		user.setUser_password(password);
		
		if(UserService.verifyUser(user))
		{
		     RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		     rd.forward(request, response);
		}
		else
		{
		
			response.sendRedirect("loginPage.jsp?status=Invalid Email or Password. Please Try again!!!");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
