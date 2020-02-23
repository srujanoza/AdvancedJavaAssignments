<%-- 
    Document   : deleteproductdata
    Created on : 19 Feb, 2020, 4:26:18 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            form
            {
                 margin-left: 50px;
                 margin-top: 50px;
            }
            form input
            {
                width: 240px;
                height:35px;
                border-radius: 8px;
            }   
            #button:hover
            {
                background-color: white;
                text-decoration: underline;
            }
            form input:hover
            {
               
            }
            body
            {
                background-color: #c7c7c7;
            }
        </style>
    </head>
    <body>
         <%
            if(request.getParameter("deletedata")!= null)
            {
        %>
        <form>
            <input type ="text" name="category" placeholder="Enter the category you want to delete"><br><br>
            <input type ="text" name="value" placeholder="Enter the value which you want to delete"><br><br>
            <input type="submit" name="delete" value="Delete" id = "button"><br><br>
        </form>
        <%
            }
            %>
    </body>
</html>
<%
    if(request.getParameter("delete")!= null)
    {
        String category = request.getParameter("category");
        String value = request.getParameter("value");
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt", "root", "");
           Statement stmt = con.createStatement();
           String sql = "DELETE FROM products WHERE "+category+" = '"+value+"' ";
           int affectedRows = stmt.executeUpdate(sql);
           response.sendRedirect("productsearch.jsp");
       }
       catch(Exception e)
       {
           out.println(e);
       }
    }   
%>
