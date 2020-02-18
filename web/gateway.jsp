<%-- 
    Document   : gateway
    Created on : 16 Feb, 2020, 3:03:00 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String method = request.getParameter("option");
    if(method.equals("cod"))
    {
        out.println("Your order has beeen placed");
    }
    else
    {
        out.println("This feature of payment is coming soon");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        </body>
</html>
