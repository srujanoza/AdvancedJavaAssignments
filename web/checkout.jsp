<%-- 
    Document   : checkout
    Created on : 13 Feb, 2020, 4:28:41 PM
    Author     : LENOVO
--%>

<%@page import="com.vvp.web.Products"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>

    
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%!

%>
<%
       if(request.getParameter("remove")!=null)
       {
           %>
           <%
           HashMap<Integer, Integer> cartItems = (HashMap<Integer,Integer>) session.getAttribute("cart");
           Integer rid = (Integer.parseInt(request.getParameter("removeId")));
           cartItems.remove(rid);
           session.setAttribute("cart",cartItems);
           response.sendRedirect("checkout.jsp");
       }
%>
<!DOCTYPE html>
<%

HashMap<Integer,Integer> cartItems = (HashMap<Integer,Integer>)session.getAttribute("cart");
HashMap<Integer, Products> products = (HashMap<Integer, Products>) application.getAttribute("products"); 
%>

<table cellspacing = '20px;' cellpadding='10px;'>
        <tr>
        <td>Sr No.</td>
        <td>Id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Quantity</td>
        <td>Subtotal</td>
        </tr>
        
    

<%   
if(cartItems!=null)
{
    Set<Integer> pids = cartItems.keySet();
    Collection<Integer> qtys = cartItems.values();
    Iterator it = pids.iterator();
    
    int srNo = 1, total=0 , subtotal, i=0;
    while(it.hasNext())
    {
        
         Products p = products.get(it.next());
        out.println("<tr>");
        out.println("<td>");
        out.println(srNo++);
        out.println("</td>");
        out.println("<td>");
        out.println(p.getProductId());
        out.println("</td>");
        out.println("<td>");
        out.println(p.getProductName());
        out.println("</td>");
        out.println("<td>");
        out.println(p.getProductPrice());
        out.println("</td>");
        out.println("<td>");
        out.println(cartItems.get(p.getProductId()));
        out.println("</td>");
        out.println("<td>");
        out.println(cartItems.get(p.getProductId())*p.getProductPrice());
        out.println("</td>");
        out.println("<td>");
         out.println(" <form action = 'checkout.jsp'>" +
        "<input type='hidden' name='removeId' value = '"+ p.getProductId() +"' />" + 
               "<input type = 'submit' value = 'Remove' name = 'remove'>" + "</form>");

        out.println("</td>");
        out.println("</tr>");
       
        
         total = total + (cartItems.get(p.getProductId())*p.getProductPrice());
    }
    out.println("<tr>");
    out.println("<td>");
    out.println("</td>");
    out.println("<td>");
    out.println("</td>");
    out.println("<td>");
    out.println("</td>");
    out.println("<td>");
    out.println("</td>");
    out.println("<td>");
    out.println("Total");
    out.println("</td>");
    out.println("<td>");
    out.println(total);
    out.println("</td>");
    out.println("</tr>");
   out.println("</table>");       
   %><form action="payment.jsp" method = "POST" style="margin-left: 250px;">

   
    <input type="submit" value="Pay" name="payment" style= "width: 8%;">
</form>
<%
}  
%>

    




