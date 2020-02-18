<%-- 
    Document   : loginredirect
    Created on : 15 Feb, 2020, 6:27:11 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "header.jsp" %>
<!DOCTYPE html>
<%
        String username = request.getParameter("username");
         String password = request.getParameter("pwd");
        String uname = "srujan";
        String pwd = "srujan"; 
            if(request.getParameter("login")!=null)
            {
                if("srujan".equals(username))
                {
                    if("srujan".equals(password))
                    {
                       
                        out.println("<br><br><br><br><br>");
                        out.println("Login Successfully!!!");
                    } 
                    else
                    {   
                        out.println("<br><br><br><br><br>");
                        out.println("Please try again");
                    }
                }
                else
                {
                    out.println("<br><br><br><br><br>");
                    out.println("Please try again");/* TODO output your page here. You may use following sample code. */
                } 
            }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header class="masthead bg-primary text-white text-center">
        <h1 class="page-section-heading text-center text-uppercase text-secondary mb-0" style="align-content: center; color: #2c3e50; text-decoration: underline;">Login Form</h1>
        <br><br>
    <div class="container d-flex align-items-center flex-column">
        
        <form action="loginredirect.jsp" method="POST">
			Username: <input type="text" name="username" placeholder="Enter your username"><br/><br/>
			Password: <input type="password" name="pwd" placeholder="Enter your password"><br/><br/>
                        <button type = "submit" name="login">Submit</button>
                        
		</form>
    </div>
        </header>
    </body>
</html>
