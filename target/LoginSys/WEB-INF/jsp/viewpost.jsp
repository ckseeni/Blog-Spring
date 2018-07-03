<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Posts</title>
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
	#newsfeed {
		background-color: #C9E1EC;
		border: none;
		border-radius: 3px;
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		color: #OF2C6B;
		font-family: 'Comic Sans',Arial, Helvetica, sans-serif ;
		font-size: 14px;
		height: 3000px;
		outline: none;
		padding: 0px 10px;
		-webkit-appearance:none;
		margin: 80px auto;
		width: 1500px;
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
	.rig{
   color: #000040;
   position:absolute;
   top:40px;
   right:180px;
  }
</style>
</head>
<body>
	<!--  <c:forEach items="${arr}" var="content">
    ${content.getUsername()}<br>
    ${content.getContent()}}<br>
    ${content.getDate()}
	</c:forEach>-->
	<br>
	<h3>Newsfeed</h3>
	<div class="rig">
	<form method="get" action="/LoginSys/user">
      	<input type="submit" value="logout" />
     </form>
     </div>
	<div id="newsfeed">
	
	${blog}
	</div>
</body>
</html>