<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List of Suppliers</title>
<link href="<c:url value='resources/css/bootstrap.min.css'/>" rel="stylesheet"/>
	
	
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
      <li><a href="login2"><i class="glyphicon glyphicon-log-in"></i> LOGIN</a></li>
      
      <li><a href="regis2"><i class="glyphicon glyphicon-pencil"></i> REGISTRATION</a></li>
        
          
     
      
      
      
    </ul>
  </div>
</nav>
 <center>

  <div style="color: #080808; font-size: 30px"><h3>Grid View of Products</h3></div>
   

  <c:if test="${!empty supplierList}">
  <table border="1" bgcolor="#3498DB" width="600px">
    <tr
     style="background-color: #3498DB; color: white; text-align: center;"
     height="40px">
      <td>SUPPLIER ID</td>
     <td>SUPPLIER NAME</td>
     <td>SUPPLIER PLACE</td>
     
     <td> Edit </td>
     <td>Delete</td>
    </tr>
    
    <c:forEach items="${supplierList}" var="user">
     <tr
      style="background-color: #F4F6F6; color: #3498DB; text-align: center;"
      height="30px">
      
        <td>${user.sid}</td>
      <td>${user.sname}</td>
      <td>${user.place}</td>
      
     
      <td><a href="edit?id=${user.sid}">Edit</a></td>
      <td><a href="deleteSupplier?id=${user.sid}">Delete</a></td>
   
     </tr>
    </c:forEach>
    
   </table>
   </c:if>  

<br>
  <a href="form" style="color: #FDFEFE";><h5> Add Supplier</h5> </a>
 </center>
</body>
</html> 