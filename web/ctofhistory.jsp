<%-- 
    Document   : ctofhistory
    Created on : 5 Feb, 2020, 10:23:06 PM
    Author     : LENOVO
--%>
<%@page import = "java.util.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file = "header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header class="masthead bg-primary text-white text-center">
         <div class="row">
        <div class="col-lg-8 mx-auto">
            <br><br>
            
            <%
            
                HashMap<Double,Double> storedata = (HashMap<Double,Double>)session.getAttribute("history");
if(storedata != null)
{   
    out.println("<table cellspacing = '5' cellpadding = '10' style = 'border = 1 solid black;'>");
    out.println("<th>");
        out.println("Celsius");
        out.println("</th>");
        out.println("<th>");
        out.println("Fahrenheit");
        out.println("</th>");
    for(HashMap.Entry<Double,Double> entry : storedata.entrySet())
    {
        
    
        out.println("<tr>");
        out.println("<td>"); 
        out.println(entry.getKey());
        out.println("</td>");
        out.println("<td>");
        out.println(entry.getValue());
        out.println("</td>");
        out.println("</tr>");
        
    }
    out.println("</table>");
    
}

            
    %>
    <br><br><br><br><br><br><br><br><br><br>
        </div>
         </div>
        </header>
    </body>
</html>

