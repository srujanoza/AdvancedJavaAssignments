<%-- 
    Document   : payment
    Created on : 16 Feb, 2020, 3:00:16 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="margin-left: 30px; margin-top: 20px;">
        <h1>Payment Options</h1>
        <form action ="gateway.jsp">
    <input type="radio" name ="option" value ="cod">COD<br><br>
    <input type="radio" name ="option" value ="netbanking">Net Banking<br><br>
    <input type="radio" name ="option" value ="credit">Credit Card<br><br>
    <input type="radio" name ="option" value ="debit">Debit Card<br><br>
    <input type ="submit" value ="Submit"/>
   </form>
    </body>
</html>
