package com.info.service;

import java.math.BigInteger;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import com.info.model.User;

public class UserService
{

	 public static boolean insertUser(User user) 
	 {   int num=-999;
		 boolean flag=false;
		 
		 try
		 {
			 Connection con=DbConnector.MakeConnection();
			 PreparedStatement ps=con.prepareStatement("insert into User values (?, ?, ?)"); // table is user
			 ps.setString(1,user.getUser_name());
			 ps.setString(2,user.getUser_email());
			 ps.setString(3,user.getUser_password());
			  num=ps.executeUpdate();
			 if(num>0)
				 flag=true;
			 if(num==0)
			 {
				 System.out.println("This email is registerd already please try with different email!!!");
			 }
		 }
		 
		 catch(Exception e)
		 {
			 System.out.println("Email exists already");
		 }
		 
		return flag;
		 
	 }

	 public static boolean verifyUser(User user)
	 {
		 boolean flag=false;
		  
		 try
		 {
			 Connection con=DbConnector.MakeConnection();
			 PreparedStatement ps=con.prepareStatement("select * from user where user_email=? AND user_password=?");
			 ps.setString(1,user.getUser_email());
			 ps.setString(2, user.getUser_password());
			 
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 flag=true;
			 }
		 }
		 
		 catch(Exception e)
		 {
			 System.out.println("Exception in verifyUser method");
		 }
		 
		return flag;
		 
	 }

	 public static boolean send_email(UserService user,String email,String code)
	 {
		 boolean flag=true;
		 final String username = "ksgujjar755@gmail.com";
		    final String password = "Kou345+*--";
		    String recipient = email;
		 
		    
		    Properties props = new Properties();
		    props.put("mail.smtp.host", "smtp.gmail.com");
		    props.put("mail.from", "ksgujjar755@gmail.com");
		    props.put("mail.smtp.starttls.enable", "true");
		    props.put("mail.smtp.port", "587");
		    props.setProperty("mail.smtp.debug", "true");
		    
		  
		   Session session1 = Session.getInstance(props,null);
		  
		   
		    
		    MimeMessage msg = new MimeMessage(session1);
		    try {
				msg.setRecipients(Message.RecipientType.TO, recipient);
			
		    msg.setSubject("Confirmation of Email");
		   // msg.setText("click here to confirm your email   "+"http://localhost:8080/E-commercePro/enterpwd.jsp?code="+code);
		     msg.setText("Verification code \n  G:"+code);
		    Transport transport = session1.getTransport("smtp");
		    transport.connect(username, password);
		    transport.sendMessage(msg, msg.getAllRecipients());
		    transport.close();
		    } 
		    catch (MessagingException e)
		    {
				flag=false;
				System.out.println("NOT INTERNATE CONNECTION!!!");
				e.printStackTrace();
			}
		    
		 return flag;
	 }

	 public static boolean search_email(User user)
	 {
		 boolean flag=false;
		 try
		 {
			 Connection con=DbConnector.MakeConnection();
			 PreparedStatement ps=con.prepareStatement("select * from user where user_email=?");
			 ps.setString(1, user.getUser_email());
			
			 ResultSet rs=ps.executeQuery();
			 while(rs.next())
			 {
				 flag=true;
			 }
			 
		 }
		 catch (Exception e)
		 {
			System.out.println("Email does not exist in database");
		}
		   
		 
		 return flag;
		 
	 }
}

