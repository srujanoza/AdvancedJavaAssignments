<%-- 
    Document   : ctofconverter
    Created on : 5 Feb, 2020, 5:33:57 PM
    Author     : LENOVO
--%>
<%@page import ="java.util.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    static double result = 0;
%>
<%
    String operation = request.getParameter("operation");
    if(operation != null)
    {
       
        int temp = Integer.parseInt(request.getParameter("temp"));
        HashMap<Double,Double> storedata = (HashMap<Double,Double>)session.getAttribute("history");
        if(storedata==null)
        {
            storedata = new HashMap<Double,Double>();
        }
        
        result = (1.8*temp)+32;
        storedata.put((double)temp,result);
        session.setAttribute("history", storedata);
    }    

%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
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
            <h1 class="page-section-heading text-center text-uppercase text-secondary mb-0" style="align-content: center; color: #2c3e50; text-decoration: underline;">C to F Convertor</h1>
            <br><!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form action="ctofconvertor.jsp" method="POST">
              <input type ="text" name="temp" placeholder="Enter temp. in Celsius"><br><br>
              <input type="text" name="answer" value="<%=result%>"><br><br>
              <input type="submit" name ="operation" value =" Convert C to F"><br><br>
         </form>	
              <form method="POST" action ="ctofhistory.jsp">
                  <input type="submit" name="history" value="See History">
         </form>
        </div>
      </div>
            </header>
    </body>
</html>
