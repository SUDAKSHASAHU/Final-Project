<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
     <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
 <link rel="stylesheet" href="<c:url value="/resources/css/navbar.css"></c:url>">
  <link rel="icon" href ="<c:url value="/resources/images/icon2.jpg"></c:url>">
 
<title>GYM HOUSE</title>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar" id="nav_bar">
			<div class="navbar-header">
				<a href="" class="navbar-brand"><img src="<c:url value='/resources/images/icon1.png'></c:url>"
					alt="NIIT" height="25px" width="40px"></a>
			<button type="button" class="navbar-toggle collapsed" 
   data-toggle="collapse" data-target="#navbardemo" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
			</div>
			<div class="collapse navbar-collapse" id="navbardemo">
			<ul class="nav navbar-nav" id="links">
				<li><a href='<c:url value='/home'></c:url>'class="fontSize"><span class="glyphicon glyphicon-home"></span> Home&nbsp;</a></li>
	
				
				<li><a href="<c:url value='/all/getallproducts'></c:url>"><span class="glyphicon glyphicon-th"></span> Browse all products&nbsp;</a>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"><span class="glyphicon glyphicon-cloud-download"></span> Select By Category&nbsp;<span class="caret"></span></a>
					
				<ul class="dropdown-menu">
				<c:forEach items="${categories }" var="category">
<li><a href='<c:url value="/all/searchByCategory?searchCondition=${category.categoryname }"></c:url>'>${category.categoryname }</a>
				</li>
				</c:forEach>
				
				<li>
				<a href='<c:url value='/all/searchByCategory?searchCondition=All'></c:url>'>All</a></li>
				</ul>
				<security:authorize access="hasRole('ROLE_USER')">
			   <li><a href="<c:url value='/cart/getcart'></c:url>"><span class="glyphicon glyphicon-shopping-cart">(${cartSize })</span></a></li>
			   </security:authorize>
			   <security:authorize access="hasRole('ROLE_ADMIN')">
			   <li><a href="<c:url value="/admin/getproductform"></c:url>">Add Product</a></li>
			   </security:authorize>
			    <security:authorize access="hasRole('ROLE_ADMIN')">
				 <li><a href="<c:url value="/admin/getcategoryform"></c:url>">Add Category</a></li>
				
				 	 <li><a href="<c:url value="/all/getallcategories"></c:url>"><span class="glyphicon glyphicon-list"></span> Browse all Categories</a></li>
				 	  </security:authorize>
				<c:if test="${pageContext.request.userPrincipal.name==null }">
				<li><a href="<c:url value="/all/registrationform"></c:url>">&nbsp;
				<span class="glyphicon glyphicon-user"></span> Sign Up &nbsp;</a></li>
				
				<li data-toggle="modal" data-target="#myModal">
				
				<a href='<c:url value="/login"></c:url>'>&nbsp;<span class="glyphicon glyphicon-log-in"></span> Sign In &nbsp;</a></li>
				</c:if>
				
			<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<li><a href="#">Welcome ${pageContext.request.userPrincipal.name }&nbsp;</a></li>
				<li><a href='<c:url value="/j_spring_security_logout"></c:url>'>Sign out&nbsp;</a></li>
				</c:if>
				<li><a href="<c:url value='/aboutus'></c:url>"> <span class="glyphicon glyphicon-globe"></span> About us</a></li>
			</ul>
			</div>
		</nav>
	</div>

</body>
</html>