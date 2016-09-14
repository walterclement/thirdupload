<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>LOGIN</title>
    	<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
	<link href="<c:url value='resources/css/loginnew.css'/>" rel="stylesheet"/>
</head>
<body>
<nav class="navbar-fixed-top navbar-inverse" >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li ><a href="home1"><i class="glyphicon glyphicon-home"></i> Home</a></li>
    <li><a href="form"><i class="glyphicon glyphicon-plus-sign"></i> ADD PRODUCT</a></li>
      <li><a href="aboutus">ABOUT US</a></li>
      <li class="active"><a href="login2"><i class="glyphicon glyphicon-log-in"></i> LOGIN</a></li>
      
      <li><a href="regis2"><i class="glyphicon glyphicon-pencil"></i> REGISTRATION</a></li>
        
          
     
      
      
      
    </ul>
  </div>
</nav>
   <div class="container">
    <h1>Login</h1>
      <form class="form">
        <input type="text" placeholder="username">
        <input type="password" placeholder="password">
        <button type="submit" id="login_buton">
          login</button>
        </form>

   </div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="<c:url value='resources/js/bootstrap.min.js'/>"/></script>


</body>
</html>