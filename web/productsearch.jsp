<%-- 
    Document   : productsearch
    Created on : 17 Feb, 2020, 4:17:06 PM
    Author     : LENOVO
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
                background-color: #c7aaaa;
            }
            form
            {
                margin-left: 50px;
            }
            form input
            {
                width: 130px;
                height: 40px;
                border-radius: 8px;
            }
            form input:hover
            {
                background-color: white;
                text-decoration: underline;
            }
        </style>
    </head
    <body>
        <h3>Please select the operation you want to perform:</h3>
            <form action="insertproductdata.jsp" method="POST">
                <input type="submit" name="insertdata" value="Insert products" >
            </form><br>
            <form action="updateproductdata.jsp" method="POST">
                    <input type="submit" name="updatedata" value="Update products" >
            </form><br>
            <form action="deleteproductdata.jsp" method="POST">
                    <input type="submit" name="deletedata" value="Delete products">
            </form><br>
            <form action="productsearchresult.jsp" method="POST">
                    <input type="submit" name="searchdata" value="Search products" >
            </form>
    </body>
</html>
