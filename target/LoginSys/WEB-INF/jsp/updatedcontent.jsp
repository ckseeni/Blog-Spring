<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Posted</title>
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

<div id="center">
<h3>Blog posted</h3>

<form method="POST" action="/LoginSys/Viewpost" >
		<input type="submit" value="viewposts" />
	</form>
</div>
</body>
</html>