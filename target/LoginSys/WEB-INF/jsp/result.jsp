<%@page contentType = "text/html;charset = UTF-8" language = "java" %>
<%@page isELIgnored = "false" %>
<!--  <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>-->
<html>
   <head>
      <title>Succesfull</title>
	  <style type="text/css">
		body {
			background-color: #808080;
			color: #000000;
			font-family: 'Open Sans', Arial, Helvetica, sans-serif;
			font-size: 16px;
			line-height: 1.5em;
		}
		h3{
			text-align : center;
			font-weight : bold;
		}
		form input[type="submit"] {
			background-color: #000040;
			border: none;
			text-align:center;
			border-radius: 30px;
			-moz-border-radius: 30px;
			-webkit-border-radius: 30px;
			color: #ffffff;
			cursor: pointer;
			font-family: 'Open Sans', Arial, Helvetica, sans-serif;
			height: 40px;
			text-transform: uppercase;
			width: 100px;
			margin: 45px ;
		}
		#center {
		margin: 80px auto;
		width: 300px;
	}
</style>
   </head>

   <body>
      <h2></h2>
      <div id="center">
      <h3>Account for ${username} is registered!! </h3> 
      <form method="get" action="/LoginSys/user">
      	<input type="submit" value="home" />
      </form>
      </div>
   </body>
   
</html>