<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.profesor.*" %>
<%@ page import = "model.entity.*"  %>

<% 
	Profesor profesor = (Profesor) request.getAttribute("profesores");
%>
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
    <li><a href="/profesors">Proformas</a>
    <li><a href ="/profesors/add">Agregar profesor</a>
    <li><a href="/users/login"">Login</a></li>
    <li><a href="/users/logout" >Logout</a></li>
 </ul>

<center>
		<h1 align="center">VER PROFESOR</h1>

	<p />
	<p></p>
	<div class="table">
		<center>
			<h2>Profesor con ID:  <%= profesor.getId() %></h2>
		
				<table class="vertical-table" border="10" width= "40%"
height= "70%">
				<tbody>
		
							<tr>
								<th scope="row">Nombre: </th>
								<td><%= profesor.getName() %></td>
							</tr>
							<tr>
								<th scope="row">Teléfono: </th>
								<td><%= profesor.getTelefono() %></td>
							</tr>
							<tr>
								<th scope="row">Email:</th>
								<td><%= profesor.getEmail() %></td>
							</tr>
							<tr>
								<th scope="row">Edad:</th>
								<td><%= profesor.getEdad() %></td>
							</tr>
							<tr>
								<th scope="row">Grado de Estudios: </th>
								<td><%= profesor.getgEstudios() %></td>
							</tr>
							<tr>
								<th scope="row">Genero: </th>
								<td><%= profesor.getGenero() %></td>
							</tr>
						</tbody>
					</table>
					</center>
					<a href="/profesors/view" class="btn btn-info"  role="button"  >Retornar a la lista de profesores</a>
				</div>
	</center>
</body>
</html>