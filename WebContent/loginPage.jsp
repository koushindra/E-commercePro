<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="regstyle.css">
</head>
<body>


	<h1 style="color: white">
		<u>Sign in form<u></u>
	</h1>
	<hr>
	<form action="login" method="post">

		<h1>Please Sign In</h1>

		<fieldset>
			<label for="mail">Email:</label> <input type="email" id="mail"
				name="user_email" autocomplete="off">

			<pre>  <label for="password">Password:<a
					href="forgotPassword.jsp">Forgot Password ?</a></label>
			</pre>
			<input type="password" id="password" name="user_password">

		</fieldset>

		<input id="button" type="submit" value="Sign In"> <a
			style="color: black" href="registration.jsp">Not already
			Registered...Click here!</a>

	</form>
	<div align="center">
		<font color="blue" size=5 margin> <%
     	if(request.getParameter("status")!=null)
     	{
     %> <%=request.getParameter("status") %> <%} %>
		</font>
	</div>
</body>
</html>