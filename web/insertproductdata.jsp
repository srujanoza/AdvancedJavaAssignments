<%-- 
    Document   : insertproductdata
    Created on : 18 Feb, 2020, 12:40:44 PM
    Author     : LENOVO
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



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
                width: 160px;
                height:35px;
                border-radius: 8px;
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
            if(request.getParameter("insertdata")!= null)
            {
        %>
        <form>
            <input type="text" name="pname" placeholder="Enter name"><br><br>
                <input type="number" name="price" placeholder="Enter price"><br><br>
                <input type="text" name="desc" placeholder="Enter description"><br><br>
                <input type="submit" name="insert" value="Insert" id="button"><br><br>
        </form>
        <%
            }
            %>
    </body>
</html>
<%
    if(request.getParameter("insert")!= null)
    {
       String pname = request.getParameter("pname");
       int price = Integer.parseInt(request.getParameter("price"));
       String desc = request.getParameter("desc");
       try
       {
           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt", "root", "");
           Statement stmt = con.createStatement();
           String sql = "INSERT INTO products(name,price,description) VALUES ('"+pname+"','"+price+"','"+desc+"')";
           int affectedRows = stmt.executeUpdate(sql);
           response.sendRedirect("productsearch.jsp");
           }
       catch(Exception e)
       {
           out.println(e);
       }
    }

%>
