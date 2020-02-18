<%-- 
    Document   : calculator
    Created on : 5 Feb, 2020, 4:41:05 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
     static float result = 0; 
void add (int n1,int n2)
{
   result = (n1+n2);
}

void sub(int n1,int n2)
{
    result = (n1-n2);
}
void mul (int n1,int n2)
{
    result = (n1*n2);
}

void div (int n1,int n2)
{
    result = (n1/n2);
}

%>
<%
        String operation = request.getParameter("operation");
    if(operation != null)
    {
        char op = operation.charAt(0);
        int n1 = Integer.parseInt(request.getParameter("number1"));
        int n2 = Integer.parseInt(request.getParameter("number2"));
        switch(op)
        {
            case '+':  add(n1,n2);
//out.println("n1+n2 =" + (n1+n2));
            break;
            case '-': sub(n1,n2);
//out.println("n1-n2 =" + (n1-n2));
            break;
            case '*': mul(n1,n2);
//out.println("n1*n2 =" + (n1*n2));
            break;
            case '/': div(n1,n2);
//out.println("n1/n2 =" + (n1/n2));
            break;
        }
        
    }


%>

<!DOCTYPE html>
<%@include file="header.jsp"%>
<%@page errorPage="error.jsp"%>
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
            <h1 class="page-section-heading text-center text-uppercase text-secondary mb-0" style="align-content: center; color: #2c3e50; text-decoration: underline;">Calculator</h1>
            <br><!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form action="calculator.jsp" method="POST">
              <input type="text" name = "number1" placeholder="Enter number 1" style =" border-radius: 8px;"><br><br>
              <input type="text" name = "number2" placeholder="Enter number 2" style =" border-radius: 8px;"><br><br>
              <input type="text" name="result" value = "<%=result%>" style =" border-radius: 8px;"><br><br>
              <input type ="submit" name ="operation" value="+" style =" border-radius: 8px; background-color: buttonface; ">
              <input type ="submit" name ="operation" value="-" style =" border-radius: 8px; background-color: buttonface;">
              <input type ="submit" name ="operation" value="*" style =" border-radius: 8px; background-color: buttonface;">
              <input type ="submit" name ="operation" value="/" style =" border-radius: 8px; background-color: buttonface;">
         </form>		
        </div>
      </div>
            </header>
    </body>
</html>