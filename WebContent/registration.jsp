<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sign Up Form</title>

<link rel="stylesheet" href="regstyle.css">


<script type="text/javascript">                                                          
function emailCheck(){
var email = document.getElementById('mail').value;
var xmlhttp=new XMLHttpRequest();

var params = "email="+email;

xmlhttp.open("POST","register",true);
xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
xmlhttp.setRequestHeader("Content-length", params.length);
xmlhttp.setRequestHeader("Connection", "close");

xmlhttp.onreadystatechange=function()
  {
  if(xmlhttp.readyState==4 && xmlhttp.status==200)
    {
     if(xmlhttp.responseText == '0'){
         document.getElementById('msg').innerHTML='Email already exists.';
     }
     else{
         document.getElementById('msg').innerHTML='Email valid.';
     document.getElementById('tnc').style.display='block';
     }
    }
  }
xmlhttp.send(params);
}
</script>

</head>
<body>
	<h1 style="color: black">Sign Up !!!</h1>
	<hr>
	<form action="register" method="post">

		<h1>Sign Up</h1>

		<fieldset>
			<legend>
				<span class="number">1</span>Your basic info
			</legend>
			<label for="name">Name:</label> <input type="text" id="name"
				name="user_name"> <label for="mail">Email:</label> <input
				type="email" id="mail" name="user_email" onblur="emailCheck()"
				required autocomplete="off">
			<div id="msg">email already exist in old database</div>
			<div id="tnc" style="display: none;">

				<label for="password">Password:</label> <input type="password"
					id="password" name="user_password">
		</fieldset>

		<input id="button" type="submit" value="Sign Up" href="">
	</form>

	<hr>

</body>
</html>