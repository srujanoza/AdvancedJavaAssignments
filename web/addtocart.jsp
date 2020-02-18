<%-- 
    Document   : addtocart
    Created on : 14 Feb, 2020, 10:59:43 PM
    Author     : LENOVO
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import = "com.vvp.web.Products;" %>
<%@include file = "header.jsp" %>


<%

    Products product[] = new Products[3];
    product[0] = new Products(1, "Bose HeadPhones", 5,900 );
    product[1] = new Products(2, "Fastrack Watch", 5,650);
    product[2] = new Products(3, "JAVA Book", 5, 450);
    
    HashMap<Integer, Products> products = (HashMap<Integer,Products>)application.getAttribute("products");
    for (int i = 0; i < product.length; i++) {
        if (products == null) {
            products = new HashMap<Integer, Products>();
        }
        products.put(new Integer(product[i].productId), product[i]);
        application.setAttribute("products", products);
    }
    
%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Freelancer - Start Bootstrap Theme</title>

  <!-- Custom fonts for this theme -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <!-- Theme CSS -->
  <link href="css/freelancer.min.css" rel="stylesheet">

</head>

<body id="page-top">
    <br><br><br><br><br>
    <form action = "checkout.jsp" style = "float: right; margin-right: 20px;">
        <input type="submit" value="View Cart"> 
    </form>

  <!-- Navigation -->
  
  <!-- Portfolio Section -->
  <section class="page-section portfolio" id="portfolio" style = "
           margin-top: -300px;">
    <div class="container">

      <!-- Portfolio Section Heading -->
     
      <!-- Icon Divider -->
      

      <!-- Portfolio Grid Items -->
      <div class="row">

        <!-- Portfolio Item 1 -->
        <div class="col-md-6 col-lg-4" >
            <form action="buymore.jsp">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
            </div>
            <img class="img-fluid" src="bose.png" alt="" style="margin-bottom: 30px;  border-radius: 20px;">
            <br>
            <input type="hidden" name ="pid" value = "1"/> 
            <input type="number" name="qty" placeholder="Quantity" min="1" max="5">
            <input type="submit" name="submit" value="Add to Cart"  />
            <br><br>	
        </form>
          <br>
        </div>

        <!-- Portfolio Item 2 -->
        <div class="col-md-6 col-lg-4">
          <form action="buymore.jsp">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
            	
              
            </div>
            <img class="img-fluid" src="fastrack.png" alt="" style="margin-bottom: 30px;  border-radius: 20px;height: 69%;">
            <br>
            <input type="hidden" name ="pid" value = "2"/>
            <input type="number" name="qty" placeholder="Quantity">
            <input type="submit" name="submit" value="Add to Cart"  />
            <br><br>	
        </form>
          <br>
        </div>

        <!-- Portfolio Item 3 -->
        <div class="col-md-6 col-lg-4">
          <form action="buymore.jsp">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
            	
              
            </div>
            <img class="img-fluid" src="java.png" alt="" style="margin-bottom: 30px;  border-radius: 20px; height: 70%;">
            <br>
            <input type="hidden" name ="pid" value = "3"/>
            <input type="number" name="qty" placeholder="Quantity">
            <input type="submit" name="submit" value="Add to Cart"  />
            <br><br>	
        </form>
          <br>
        </div>
        
      </div>
 
  </section>
         