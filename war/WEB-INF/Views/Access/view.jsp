<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.entity.Access" %>
<%
	Access a = (Access) request.getAttribute("access");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta charset="UTF-8">
<title>Laboratorio 08</title>
<link rel="stylesheet" href="/estilos.css" >
</head>
<body>



  <!-- Navbar on small screens -->
  <ul class="navbar">
  	 
    <li><a href="/roles">Roles</a>
    <li><a href="/users">Users</a>
   <li> <a href="/resources" >Resources</a>
    <li><a href="/access" >Access</a>
   <li><a href="/profesors">Profesores</a>
    <li><a href="/users/login">Login</a></li>
    <li><a href="/users/logout" >Logout</a></li>
 </ul>


<center>
			<p style="color:blue">ID:</p>
				<p><%=a.getId()%></p>
			<p style="color:blue">ID del rol:</p>
			<p><%=a.getRoleId()%></p>
			<p style="color:blue">ID de la Url:</p>
			<p><%=a.getUrlId()%></p>
			<p style="color:blue">Status:</p>
				<p><%=a.getStatus()%></p>
			<p style="color:blue">Fecha de Creación:</p>	
				<p><%=a.getCreated()%></p>
			
			<a href="/access" class="btn btn-info"  role="button"  >Retornar</a>
			</center>
				
</body>
</html>
