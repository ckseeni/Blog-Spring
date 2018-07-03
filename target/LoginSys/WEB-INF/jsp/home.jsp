
<html>
<head>

<title>Home</title>
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
	textarea {
		background-color: #C9E1EC;
		border: none;
		border-radius: 3px;
		-moz-border-radius: 3px;
		-webkit-border-radius: 3px;
		color: #OF2C6B;
		font-family: 'Comic Sans',Arial, Helvetica, sans-serif ;
		font-size: 14px;
		height: 200px;
		outline: none;
		padding: 0px 10px;
		width: 280px;
		-webkit-appearance:none;
	}
	#center {
		margin: 80px auto;
		width: 300px;
	}
	h3{
		font-weight: bold;
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
	<div id="center">
	<form method="POST" action="/LoginSys/Content" >
		<h3>Enter your idea:<h3>
		<br>
		<textarea name="content" cols="40" rows="5"></textarea>
		<br>
		<br>
		<input type="submit" value="Post" />
	</form>
	<form method="POST" action="/LoginSys/Viewpost" >
		<input type="submit" value="viewposts" />
	</form>
	</div>
	<div class="rig">
	<form method="get" action="/LoginSys/user">
      	<input type="submit" value="logout" />
     </form>
     </div>
</body>
</html>