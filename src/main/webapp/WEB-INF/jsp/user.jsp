<!--  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>-->
<html>
   <head>
      <title>Blog</title>
	  <style type="text/css">
	  body {
		background-color: #808080;
		color: #000000;
		font-family: 'Open Sans', Arial, Helvetica, sans-serif;
		font-size: 16px;
		line-height: 1.5em;

	}
	form input[type="submit"] {
		background-color: #000040;
		border: none;
		text-align:center;
		border-radius: 3px;
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		color: #ffffff;
		cursor: pointer;
		font-family: 'Open Sans', Arial, Helvetica, sans-serif;
		height: 50px;
		text-transform: uppercase;
		width: 280px;
	}
	form input[type="text"], input[type="password"] {
		background-color: #C9E1EC;
		border: none;
		border-radius: 3px;
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		color: #OF2C6B;
		font-family: 'Comic Sans',Arial, Helvetica, sans-serif ;
		font-size: 14px;
		height: 50px;
		outline: none;
		padding: 0px 10px;
		width: 280px;
		-webkit-appearance:none;
	}
	#login {
		margin: 80px auto;
		width: 300px;
	}
	#register{
		margin: 80px auto;
		width: 300px;
	}
	h2{
		font-weight: bold;
	}
	</style>
   </head>

   <body>
	<div id="register">
	<h2>E-blog</h2>
	<br>
      <h2>Register here</h2>
      <form method = "POST" action = "/LoginSys/addUser">
        Username: <input type="text" name="username" placeholder="Enter username"/>
		<br><br>
        Password: <input type="password" name="password" placeholder="Enter password"/>
		<br><br>
        <input type="submit" value="Register" />
      </form>
     </div> 
	 <div id="login">
      <h2>Login here</h2>
      <form method = "POST" action = "/LoginSys/Login">
        Username: <input type="text" name="username" placeholder="Enter username"/>
		<br><br>
        Password: <input type="password" name="password" placeholder="Enter password"/>
		<br><br>
        <input type="submit" value="Login" />
      </form>
	 <div id="login">
   </body>
   
</html>