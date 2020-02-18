<%-- 
    Document   : countvisitors
    Created on : 6 Feb, 2020, 6:29:18 PM
    Author     : LENOVO
--%>
<%!
public static int visitor_counter = 0;

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file= "header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <br><br><br><br><br>
    <h1>Total number of visitors:  </h1><br>         
    </body>
</html>
<%
    
        HttpSession s = request.getSession();
            Object obj = session.getAttribute("isVisitorCounted");
            if(obj == null)
            {
                visitor_counter++;
                session.setAttribute("isVisitorCounted","true");
                session.setMaxInactiveInterval(10);
                out.println("<h1>" + (visitor_counter) + "</h1>");
            }
            else
            {
                             out.println("<h1>" + (visitor_counter) + "</h1>");

            }
            
            /* TODO output your page here. You may use following sample code. */
            
            

       
   


%>