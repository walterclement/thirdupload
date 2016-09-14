<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>About Us</title>


    <link href="<c:url value='resourse/css/bootstrap.min.css'/>" rel="stylesheet"/>
      <link href="<c:url value='resourse/css/abtus.css'/>" rel="stylesheet"/>

</head>
<body>
 <nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <div class="navbar-header">
        <a class="navbar-brand" href="#"><img src="<c:url value='resourse\images\cs.png'/>"  /></a>
      </div>
      <ul class="nav navbar-nav">
        <li ><a href="home.jsp">Home</a></li>
        <li><a href="login1.jsp">LOGIN</a></li>
        <li><a href="regis1.jsp">REGISTRATION</a></li>
        <li class="active"><a href="#">ABOUT US</a></li>
      </ul>
    </div>
    </nav>
      <div class="container">
        <h3> About Us <h3>
      <h6>Cakes World is an online store that delivers cakes and flowers in 63 locations in Chennai.We make best quality cakes </h6>
      <h6>and deliver it on time.We have our own delivery team with strong technological and operations experience which enables</h6>
      <h6>We bring you a unique and easy way of ordering your favorite cake through online and home delivery. We haveour own</h6>
      <h6>production in SIDCO Industrial Estate, Ekkattuthangal. Our confectionary team bakes the fresh cakes and makes best quality</h6>
      </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

    <script src="<c:url value='resourse/js/bootstrap.min.js'/>"/></script>

</body>
</html>