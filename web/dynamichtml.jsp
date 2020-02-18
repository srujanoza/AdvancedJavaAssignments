<%-- 
    Document   : dynamichtml
    Created on : 5 Feb, 2020, 10:45:12 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header class="masthead bg-primary text-white text-center">
         <div class="row">
        <div class="col-lg-8 mx-auto">
            <br><br>
            <h1 class="page-section-heading text-center text-uppercase text-secondary mb-0" style="align-content: center; color: #2c3e50; text-decoration: underline;">Dynamic field Generator</h1>
            <br>
        <form method="POST" action="dynamichtml.jsp">
            
            <input type="number" placeholder = "Enter the no. of fields" name ="fields"><br><br>
            <input type="submit" name ="generate" value="Generate field/s">
        </form>
        </div>
         </div>
        </header>
        <br><br>
    </body>
</html>
<%
    
    if(request.getParameter("generate")!=null)
    {
        int noOfFields = Integer.parseInt(request.getParameter("fields"));
        for(int i = 1;i<=noOfFields;i++)
        {
            out.println("Text field no:" + i);
           
            out.println("<input type ='text'>");
             out.println("<br><br>");
        }
    }

%>
