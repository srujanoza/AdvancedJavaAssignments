<%-- 
    Document   : logindatabase
    Created on : 17 Feb, 2020, 4:03:23 PM
    Author     : LENOVO
--%>
<%@page import = "java.sql.*" %>
<%
    
    if(request.getParameter("login")!=null)
    {
        String uname = request.getParameter("username");
        String password = request.getParameter("pwd");
         try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt", "root", "");
        Statement stmt = con.createStatement();
        String sql = "SELECT * FROM `logindata` WHERE username = '"+uname+"' and password = '"+password+"'";
        ResultSet rs =  stmt.executeQuery(sql);
        if(rs.next())
        {
            out.println("<br><br><br><br><br><br>");
            out.println("Login successfull");
        }
        else
        {
            out.println("<br><br><br><br><br><br>");
            out.println("Try again");
            
        }
        }
        catch(Exception e)
        {
         out.println(e);   
        }
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file = "header.jsp" %><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style = "background-color: #c7c7c7;">
        <h1 class="page-section-heading text-center text-uppercase text-secondary mb-0" style=" margin-top: 100px; align-content: center; color: #2c3e50; text-decoration: underline;">Login Form</h1>
        <br><br>
    <div class="container d-flex align-items-center flex-column">
        
        <form action="logindatabase.jsp" method="POST">
			Username: <input type="text" name="username" placeholder="Enter your username"><br/><br/>
			Password: <input type="password" name="pwd" placeholder="Enter your password"><br/><br/>
			<button type = "submit" name = "login">Submit</button>
		</form>
    </div>
    </body>
</html>
