<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.entity.Role" %>
<%
Role r = (Role) request.getAttribute("role");
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
				<p><%=r.getId()%></p>
	<p style="color:blue">Nombre:</p>
				<p><%=r.getName()%></p>
	<p style="color:blue">Status:</p>
				<p><%=r.getStatus()%></p>
				<p style="color:blue">Fecha de creacion:</p>
				<p><%=r.getDate()%></p>
				
		<a href="/roles" class="btn btn-info"  role="button"  >Retornar</a>
			</center>

</body>
</html>
