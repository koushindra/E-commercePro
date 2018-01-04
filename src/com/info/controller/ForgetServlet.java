package com.info.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Properties;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.info.model.User;
import com.info.service.UserService;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;

@WebServlet("/forget")
public class ForgetServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	   PrintWriter out=response.getWriter();
	   response.setContentType("text/html");
	  
	   String email=request.getParameter("email");
	   User user=new User();                 // searching email in database
	   user.setUser_email(email);
	   boolean flag=UserService.search_email(user);
	   if(flag==false)
	   {
		   /*out.println(email+"<h1>  does not exist in database</h1>");
		   
	   }
	   
	   else{*/
	    SecureRandom random= new SecureRandom();            // generating random code for verification
		String code=new BigInteger(8*5,random).toString(32);  
		
	//  String code = UUID.randomUUID().toString();  // uuid always contains 32 character seprated with -
	
	  System.out.println("check 1:the code is "+code);
	    
	    HttpSession session=request.getSession();
	    session.setAttribute("varcode",code);
	   // session.setAttribute("varcode",uuid);

	    System.out.println("forget servlet page the session is :"+session+
	    		"\n session id is  "+session.getId());  //the session is LIKE THIS :org.apache.catalina.session.StandardSessionFacade@321d40d5
	
	   
	   
	    
	    UserService user1=new UserService();
	     flag=UserService.send_email(user1,email,code);
	    
	    if(flag==true)
	    {
	    	out.println("mail sent succesully");
	    	response.sendRedirect("enterpwd.jsp");
	    	
	    }
	    else
	    {	out.println("");
	    	response.sendRedirect("mailError.jsp");
	    }
	   }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
