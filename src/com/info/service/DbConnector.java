package com.info.service;

import java.sql.DriverManager;
import java.sql.Connection;

public class DbConnector 
{
	 public static Connection con=null;
		public static Connection MakeConnection()
		{
			if(con==null)
			{ 
				try
				{
					Class.forName("com.mysql.jdbc.Driver");
					con= DriverManager.getConnection("jdbc:mysql://localhost:3306/ecomDb","root","12345678");  // Database is ecomdb
				}
			catch(Exception e)
				{
				System.out.println("Error while making connection:");
				}
				return con;
			}
			
			else
			{
				return con;
			}
		}
}


