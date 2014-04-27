<%@page import="recommender.Recommendation"%>
<%@ page import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String userid = request.getParameter("uname");   
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/conference_search",
            "root", "ganpati1");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from user_profile where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
       // session.setAttribute("username", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        // response.sendRedirect("welcome.jsp");
        //store recommended conferences to appropriate table
		Recommendation r = new Recommendation();
		r.storeTopRecommendations(userid);
        response.sendRedirect("welcome.jsp");
    } else {
       // out.println("Invalid username or password <a href='index.jsp'>try again</a>");
    	response.sendRedirect("index.jsp?res=1");
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to the home of Conferences!</title>
</head>
<body>



</body>
</html>