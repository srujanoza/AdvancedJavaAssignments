<%-- 
    Document   : signupdatabase
    Created on : 16 Feb, 2020, 3:48:14 PM
    Author     : LENOVO
--%>

<%@page import= "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("submit")!=null)
    {
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("emailId");
        try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt", "root", "");
        Statement stmt = con.createStatement();
        int affectedRows = stmt.executeUpdate(
         "INSERT INTO logindata(username, password, email) VALUES ('"+name+"','"+password+"','"+email+"')");
       
        }
        catch(Exception e)
        {
         out.println(e);   
        }
    } 
%>
<%@include file = "header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body  style = "background-color: #c7c7c7;">
        <div class="row">
        <div class="col-lg-8 mx-auto">
            <br><br>
            <h1 class="page-section-heading text-center text-uppercase text-secondary mb-0" style=" margin-top: 100px; align-content: align-content: center; color: #2c3e50; text-decoration: underline;">Signup Form</h1>
            <br><!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form action="signupdatabase.jsp" method="POST">
			Username:
                        <input type="text" name="username" placeholder="Enter your user name" class="form-control" style="width: 50%;"><br/><br/>
			Password:
			<input type="password" name="password" placeholder="Enter password" class="form-control" style="width: 50%;"><br/><br/>
			Confirm Password:
			<input type="password" name="confpwd" placeholder="Enter confirm password" class="form-control" style="width: 50%;"><br/><br/>
                        Email:
			<input type="email" name="emailId" placeholder="Enter email" class="form-control" style="width: 50%;"><br/><br/>
			Phone No.:
			<input type="number" name="phNo." placeholder="Enter phone number" class="form-control" style="width: 50%;"><br/><br/>
			Semester:
			<input type="number" name="sem" placeholder="Enter semester" class="form-control" style="width: 50%;"><br/><br/>
			Branch: &nbsp;
			<select name = "branch">
				<option value="CE">Computer</option>
				<option value="CE">Electrical</option>
				<option value="CE">EC</option>
				<option value="CE">IT</option>
				<option value="CE">Mech</option>
                        </select><br/><br/><br>
                        Address:
                        <textarea placeholder="Enter address" name="address" class="form-control" style="width: 50%;"></textarea><br/><br/>
			Gender:
                        <br/><input type="radio" name="gender" value="Male">Male
                        <br/><input type="radio" name="gender" value="Female">Female<br/><br/>
			Hobbies:
                        <input type="checkbox" name="hobbies" value="sports">Cricket
                        <input type="checkbox" name="hobbies" value="dancing">Dancing
                        <input type="checkbox" name="hobbies" value="singing">Singing
                        <input type="checkbox" name="hobbies" value="sports">Swimming
                        <input type="checkbox" name="hobbies" value="sports">Football
                        <input type="checkbox" name="hobbies" value="sports">Hockey
                        <input type="checkbox" name="hobbies" value="sports">Painting
                        <input type="checkbox" name="hobbies" value="sports">Writing<br/><br/>
			<button type="Submit" value="Submit" name = "submit">Submit</button>
		
          </form>
        </div>
      </div>

    
    </body>
</html>
