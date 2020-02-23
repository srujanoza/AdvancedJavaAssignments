<%-- 
    Document   : updateproductdata
    Created on : 19 Feb, 2020, 3:57:53 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                background-color: #c7c7c7;
            }
            form
            {
                 margin-left: 50px;
                 margin-top: 50px;
            }
            form input
            {
                width: 250px;
                height:35px;
                border-radius: 8px;
            }
            #button
            {
                width: 160px;
            }
             #button:hover
            {
                background-color: white;
                text-decoration: underline;
                
            }
            
            
        </style>
    </head>
    <body>
        <%
            if(request.getParameter("updatedata")!= null)
            {
        %>
        <form>
            <input type="number" name ="id" placeholder="Enter id of product"><br><br>
            <input type ="text" name="category" placeholder="Enter the category you want to update"><br><br>
            <input type ="text" name="value" placeholder="Enter the new value here"><br><br>
            <input type="submit" name="update" value="Update" id="button"><br><br>
        </form>
        <%
            }
            %>
    </body>
</html>
<%
     if(request.getParameter("update")!= null)
    {
        int id = Integer.parseInt(request.getParameter("id"));
        String category = request.getParameter("category");
       String value = request.getParameter("value");
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt", "root", "");
           Statement stmt = con.createStatement();
           String sql = "UPDATE products SET "+category+" = '"+value+"' WHERE  id = "+id+"";
           int affectedRows = stmt.executeUpdate(sql);
           response.sendRedirect("productsearch.jsp");
       }catch(Exception e)
       {
           out.println(e);
       }
    } 

    %>
