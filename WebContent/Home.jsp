<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Conference Search</title>
<link rel="stylesheet" type="text/css" href="conf_Search.css" />
<style type="text/css">
ul#menu, ul#menu ul.sub-menu {
    padding:0;
    margin: 0;
}
ul#menu li, ul#menu ul.sub-menu li {
    list-style-type: none;
    display: inline-block;
}
/*Link Appearance*/
ul#menu li a, ul#menu li ul.sub-menu li a {
    text-decoration: none;
    color: #CCC;
	background: #3B5998;
    padding: 5px;
    display:inline-block;
    width:100px;
    text-align:  left;
}
/*Make the parent of sub-menu relative*/
ul#menu li {
    position: relative;
}
/*sub menu*/
ul#menu li ul.sub-menu {
    display:none;
    position: absolute;
    top: 30px;
    left: 0;
    width:100px;
}
ul#menu li:hover ul.sub-menu {
    display:block;
}
</style>
</head>
<body bgcolor="E6E6FA">
<div id="topdiv">
<ul id="menu">
				<li> <a href="#"> About US  </a>
				
				<ul class="sub-menu">
				<li><a href="http://www.linkedin.com/in/harikeshkalyanpur/">Harikesh</a></li>
				<li><a href="http://www.linkedin.com/in/hetalpatadia">Hetal</a></li>
				</ul>
				</li>
				</ul>
		<div id="topdivContent" style="margin-top:-25px;">
		
			
		
			<a id="bb_login1" href="register.jsp" class="logoutLink"
				>New User</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a id="bb_login" href="index.jsp" class="logoutLink"
				>Login</a>
				
			
			<!-- <a id="bb_logOut" href='login.php?logout=1&'>logOut</a> -->
		</div>
</div>


	
<div class="imageMainPage">
	<img src="images/images2.jpg" align="middle" width="100%" height="150px" />
	
	<div style="padding-top: 15px;">
	
	Helo 111
	</div>
	
	
	</div>
	
	
	<div id="bottomdiv" align="center">&copy; San Jose State University 2014</div>
</body>
</html>