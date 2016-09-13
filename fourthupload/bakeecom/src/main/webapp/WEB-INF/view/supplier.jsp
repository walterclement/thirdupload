<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Supplier</title>
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
    <li class="active"><a href="form"><i class="glyphicon glyphicon-plus-sign"></i> ADD PRODUCT</a></li>
      <li><a href="aboutus">ABOUT US</a></li>
      <li><a href="login2"><i class="glyphicon glyphicon-log-in"></i> LOGIN</a></li>
      
      <li><a href="regis2"><i class="glyphicon glyphicon-pencil"></i> REGISTRATION</a></li>
        
     </ul>
  </div>
</nav>

<center>

  <div style="color: teal; font-size: 30px">Add Product</div>



<%--   <c:url var="userRegistration" value="saveUser.html" /> --%>
  <form:form id="registerForm" commandName="prod" method="post"
   action="./addProduct">
   <table width="400px" height="150px">
    
    <tr>
     <td><form:label path="sname">SUPPLIER NAME</form:label>
     </td>
     <td><form:input path="sname" />
     </td>
    </tr>
    <tr>
     <td><form:label path="place">SUPPLIER PLACE</form:label>
     </td>
     <td><form:input path="place" />
     </td>
    </tr>
    <tr>
     <td></td>
     <td><input type="submit" value="Save" /></td>
    </tr>
   </table>
  </form:form>


<a href="gridlis" style="color: #FDFEFE";>Click Here to see Product List</a>

 </center>
 </body>
</html>