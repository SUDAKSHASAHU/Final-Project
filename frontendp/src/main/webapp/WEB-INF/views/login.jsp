<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/log.jpg">
  <h4><marquee behavior="alternate">
  <p id="demo"></p>
    <script>
document.getElementById("demo").innerHTML = Date();
</script>
  </marquee></h4>
<div class="container">
    
<span style="color:red">${error } </span><br>
<span style="color:green">${msg }</span>
<br>
<h3 align="center"><strong>WELCOME TO OUR LOGIN PAGE</strong></h3>
</br>
<c:url value='/j_spring_security_check' var="url"></c:url>
	
	<form action="${url }" method="post">
		<table align="center">	
			<tr>
				<td ><span class="glyphicon glyphicon-sunglasses"></span>
				 Enter Username</td>
				<td><input type="text" name="j_username" placeholder="Email"></td>
			</tr>
			<tr>
				<td><span class="glyphicon glyphicon-eye-close"></span> Enter Password</td>
				<td><input type="password" name="j_password" placeholder="Password"></td>
			</tr>
			<tr>
			<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
	</div>
	

</body>
</html>