<%-- 
    Document   : productsearchresult
    Created on : 17 Feb, 2020, 9:44:56 PM
    Author     : LENOVO
--%>
<%@page import ="java.sql.*" %>
<%

if(request.getParameter("search")!=null)
{
    String category = request.getParameter("category");
    String value = request.getParameter("value");
   try
   {
         Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt", "root", "");
        Statement stmt = con.createStatement();
        
       ResultSet rs = stmt.executeQuery("select * from products where "+category+" like '%" + value + "%' ");
        
        out.println("<table>");
        while(rs.next())
        {
           int id =  rs.getInt(1);
           String name = rs.getString(2);
           int price = rs.getInt(3);
           String desc = rs.getString(4);
           out.println("<tr>");
           out.println("<td>");
           out.println(id);
           out.println("</td>");
           
           out.println("<td>");
           out.println(name);
           out.println("</td>");
           
           out.println("<td>");
           out.println(price);
           out.println("</td>");
           
           out.println("<td>");
           out.println(desc);
           out.println("</td>");
           out.println("</tr>");
        }
        out.println("</table>");
        
   }
   catch(Exception e)
   {
       out.println(e);
   }
    
}



%>
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
            form select
            {
                width: 160px;
                height:30px;
                border-radius: 8px;
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
            if(request.getParameter("searchdata")!= null)
            {
            %>
        <form>
            <h3>Select the category of filtering:</h3><br><br><select name="category">
                <option value="price">Price</option>
                <option value="name">Name</option>
                <option value="desc">Description</option>
            </select><br><br><br>
            
            <input type = "text" name="value" placeholder="Enter the value of name/price/desc" style="width: 20%;"><br><br>
            <input type ="submit" name ="search" value="Search" id = "button">
        </form>
            <%
                }
            %>
    </body>
</html>
