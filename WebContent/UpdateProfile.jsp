<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String userid = session.getAttribute("userid").toString();
   // request.getParameter("uname");  
   %>
    
    <%ResultSet rs =null;
    try{
    	
    	if(request.getParameter("Confirmpass")!=null)
    	{
    	Class.forName("com.mysql.jdbc.Driver").newInstance();
    	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/conference_search",
                "root", "ganpati1");
    	        Statement st = conn.createStatement() ;
    	        int i =st.executeUpdate("update user_profile set password='"+request.getParameter("Confirmpass").toString() +"' where username='"+userid+"';") ;
    	        if(i==1){
    	        	response.sendRedirect("index.jsp");
    	        	
    	        }
    	        
    	}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="conf_Search.css" />
</head>

<script>
function validateForm()
{
var a=document.forms["form2"]["uname"].value;
if (a==null || a==""|| a==" ")
 {
 alert("Username must be filled out");
 form2.user.focus();
 return false;
 }
 
var invalid = " "; // Invalid character is a space
var minLength = 6; // Minimum length
var pw1 = form2.pass.value;
 //check for a value in fields.
if (pw1 == ''|| pw1==" ")
{
alert('Please enter your password.');
form2.pass.focus();
return false;
}
// check for minimum length
if (form2.pass.value.length < minLength) {
alert('Your password must be at least ' + minLength + ' characters long. Try again.');
form2.pass.focus();
return false;
}
// check for spaces
if (form2.pass.value.indexOf(invalid) > -1) {
alert("Sorry, spaces are not allowed.");
form2.pass.focus();
return false;
}

if (form2.confirm.value == "")
{
	alert ("Please enter value in the confirm password field.");
	form2.confirm.focus();
	return false;
}
if (form2.pass.value!=form2.confirm.value)
{
	alert ("Confirm password must be same as password.");
	form2.confirm.focus();
	return false;
}
	  
var x=document.forms["form2"]["fname"].value;
if (x==null || x=="" || x==" ")
  {
  alert("First name must be filled out");
  return false;
  }
  
var z=document.forms["form2"]["lname"].value;
if (z==null || z=="" || z==" ")
  {
  alert("Last name must be filled out");
  return false;
  }
  
var y = document.forms["form2"]["email"].value;
var atpos=y.indexOf("@");
var dotpos=y.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=y.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
return true;
}

</script>

<body bgcolor="E6E6FA">
<div id="topdiv">
<a id="bb_login1" href="Home.jsp" class="logoutLink"
				>Home</a>
		<div id="topdivContent" style="margin-top: -7px !important;">Welcome <a href="UpdateProfile.jsp" class="logoutLink"> <%=userid %></a>
			 <a id="bb_login" href="Home.jsp" class="logoutLink"
				>LogOut</a>
			<!-- <a id="bb_logOut" href='login.php?logout=1&'>logOut</a> -->
		</div>
</div>
<div class="imageMainPage">
<form id="form2" method="post" action="UpdateProfile.jsp" onsubmit="return validateForm();">
            <center>
            <table  cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Update Password</th>
                    </tr>
                </thead>
                <tbody>
                     
                    <tr>
                        <td>User Name</td>
                        <td><%=userid %></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="Confirmpass" value="" /></td>
                    </tr>
                   
                    <%
//**Should I input the codes here?**
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Update" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
       </div>
        <div id="bottomdiv" align="center">&copy; San Jose State University 2014</div>	
    </body>
</html>