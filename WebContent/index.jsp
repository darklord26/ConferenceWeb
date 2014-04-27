<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to the world of Conference</title>
<link rel="stylesheet" type="text/css" href="conf_Search.css" />
</head>

<body bgcolor="E6E6FA">
<div id="topdiv">
<%
if(request.getParameter("res")!=null)
{
if(request.getParameter("res").toString().equals("1"))
{
	%>
	<script type="text/javascript">
	alert("Invalid Username or Password!");
	</script>
	<%
}
}
%>
<a id="bb_login1" href="Home.jsp" class="logoutLink"
				>Home</a>
		<div id="topdivContent" style="margin-top: -7px !important;">
			<a id="bb_login1" href="register.jsp" class="logoutLink"
				>New User</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a id="bb_login" href="index.jsp" class="logoutLink"
				>Login</a>
			<!-- <a id="bb_logOut" href='login.php?logout=1&'>logOut</a> -->
		</div>
</div>
<div  style="margin-top:5%;"> </div>
<div class="imageMainPage">
	<img src="images/images2.jpg" align="middle" width="100%" height="150px" />
</div>
	<form method="post" action="login.jsp" >
		<center>
			<table  cellpadding="3">
				<thead>
					<tr>
						<th colspan="2">Login Here</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>User Name</td>
						<td><input type="text" name="uname" value="" /></td>					
					</tr>
					
					<tr>
						<td>Password</td>
						<td><input type="password" name="pass" value="" /></td>
					</tr>
					
					<tr>
						<td colspan="2"><input type="submit" value="Login" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input	type="reset" value="Reset" /></td>
							
					</tr>
						<!-- <td colspan="50"><center> New Users!! <a href="register.jsp">Register Here</a></center></td> -->
					</tr>
				</tbody>
			</table>
		</center>
	</form>
	<div id="bottomdiv" align="center">&copy; San Jose State University 2014</div>
</body>
</html>