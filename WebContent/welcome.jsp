
<%@page import="recommender.Recommendation"%>
<%@page import="operation.DbOperation"%>
<%@page import="java.util.*"%>
<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String userid = session.getAttribute("userid").toString();
   // request.getParameter("uname");   
    
    //DbOperation _dboOperation=new DbOperation();
  //  ArrayList<String> arrRecConf= DbOperation.getConfKeysFromUser(userid);
  String[] arrRecConf= DbOperation.getRecordFromUserConfTable(userid);
  System.out.print(arrRecConf.length);
  
    
%>



 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Welcome </title>
<link rel="stylesheet" type="text/css" href="conf_Search.css" />
<style>
table,th,td
{

}
</style>
</head>
<body bgcolor="E6E6FA">
<div id="topdiv">
<a id="bb_login1" href="Home.jsp" class="logoutLink"
				>Home</a>
		<div id="topdivContent" style="margin-top: -7px !important;">Welcome <a href="UpdateProfile.jsp" class="logoutLink"> <%=userid %></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			 <a id="bb_login" href="Home.jsp" class="logoutLink"
				>LogOut</a>
			<!-- <a id="bb_logOut" href='login.php?logout=1&'>logOut</a> -->
		</div>
</div>
<center> Welcome to your page </center>
<br></br>
<center><a href='success.jsp'>Search Conferences</a></center>
<br></br>

<center>
<table border="10" CELLPADDING="2" CELLSPACING="2" WIDTH="800">
<tr>
<td width="100"> <center> Conference Id </center></td>
<td width="150"> <center> Conference Name </center></td>
<td width="150"> <center> Conference Date </center></td>
<td width="150"> <center> Conference Venue </center></td>

<td width="200"> <center> Conference Speaker </center></td>
</tr>
<%
    for(String str: arrRecConf )
    {
    	str=str.trim();
    	
    	if(!str.equals("")){
    	ArrayList<String> _rec=DbOperation.showRecordFromConfTable(Integer.parseInt(str));
    	if(_rec!=null){
    		System.out.println(_rec);
    	//long lrecNumber=DbOperation.searchNumberOfConf(str);
        %>
     <tr><td> <%=_rec.get(0) %>   </td>
      <td><a href="<%=_rec.get(4)%>"> <%=_rec.get(1) %> </a>   </td>
       <td> <%=_rec.get(2) %>   </td>
        <td> <%=_rec.get(3) %> </td>
        
          <td> <%=_rec.get(5) %>  </td>
     </tr>
        <% } }
    }

%>
</table>
</center>
<br></br>
<div id="bottomdiv" align="center">&copy; San Jose State University 2014</div>

</html>