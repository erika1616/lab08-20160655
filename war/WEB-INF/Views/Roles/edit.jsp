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
	<form action="edit" method="post"><input type="hidden" name="id" value="<%=r.getId()%>">
				<input type="text" name="name" value="<%=r.getName()%>"></td>
				<p></p>
				<input type="radio" name="status" value="true" checked>True
				<input type="radio" name="status" value="false">False</td>
				<p></p>
				<td><input type="submit" value="Guardar Cambios"></form>
				<a href="/roles" class="btn btn-info"  role="button"  >Retornar</a>
	</center>


</body>
</html>
