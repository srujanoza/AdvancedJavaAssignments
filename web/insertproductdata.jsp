<%-- 
    Document   : insertproductdata
    Created on : 18 Feb, 2020, 12:40:44 PM
    Author     : LENOVO
--%>
<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%

    {
        String pname = request.getParameter("pname");
        
        int price = Integer.parseInt( request.getParameter("price"));

        String desc = request.getParameter("desc");


         try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajt", "root", "");
            Statement stmt = con.createStatement();
            String sql = "INSERT INTO products(name,price,description) VALUES ('"+pname+"','"+price+"','"+desc+"')";
            int rowsAffected =  stmt.executeUpdate(sql);
         }
         catch(Exception e ){
             out.println(e);
         }
    } 
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(request.getParameter("insert")!= null)
            {
                
            %>
        <form action="insertproductdata.jsp">
            
            
            <input name ="pname" type="text" placeholder="Enter name"/>
            <input name="price" type ="number" placeholder="Enter price"/>
            <input name = "desc " type ="text" placeholder =" Enter description"/>
            <input type="submit" name="insert" value="Insert"/>
            
        </form>
            <%
                }
               %>
    </body>
</html>
