<%-- 
    Document   : buymore
    Created on : 13 Feb, 2020, 4:13:58 PM
    Author     : LENOVO
--%>

<%@page import="java.util.HashMap;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "header.jsp" %>

<%
    int pid = Integer.parseInt(request.getParameter("pid"));
    int qty = Integer.parseInt(request.getParameter("qty"));
    HashMap<Integer,Integer> cartItems = (HashMap<Integer,Integer>)session.getAttribute("cart");
    if(cartItems==null)
    {
        cartItems = new HashMap<Integer,Integer>();
    }
    cartItems.put(pid,qty);
    session.setAttribute("cart", cartItems);
    
%>
<!DOCTYPE html>
<html>
 
    <body>
    <!-- #header -->
    <br><br><br><br><br><br>
    <a href='addtocart.jsp' style="margin-top: 400px; margin-left: 20px; font-weight: 700; font-size:30px; text-decoration: none;">Buy more amazing things.</a>
    <form action = "checkout.jsp" style = "float: right; margin-right: 20px;">
        <input type="submit" value="View Cart"> 
    </form>

    </body>
</html>
