<%-- 
    Document   : productsearch
    Created on : 17 Feb, 2020, 4:17:06 PM
    Author     : LENOVO
--%>
<%@page import = "java.sql.*" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

        if(request.getParameter("insert")!=null)
        {
            response.sendRedirect("insertproductdata.jsp");
        }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head
    <body style="background-color: #c7c7c7;">
        <form action = "productsearchresult.jsp" method = "POST" style="margin-top: 150px; margin-left: 30px;">
            Select the category of filtering<br><br><select name="category">
                <option value="price">Price</option>
                <option value="name">Name</option>
                <option value="desc">Description</option>
                
            </select><br><br>
            <input type = "text" name="value" placeholder="Enter the value of name/price/desc" style="width: 20%;"><br><br>
            <input type ="submit" name ="search" value="Search">
            
            
            
            
        </form>
    </body>
</html>
