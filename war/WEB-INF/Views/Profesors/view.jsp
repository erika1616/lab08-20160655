<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.profesor.*" %>
<%@ page import="java.util.*" %>
<%@ page import="model.entity.*" %>
<%
Profesor profesores = (Profesor)request.getAttribute("profesores");
List<Profesor> listas = (List<Profesor>) request.getAttribute("listas");
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
		<h1 align="center">LISTA DE  PROFESORES</h1>

	<%
		if (listas!=null && listas.size() > 0){
	%>

	<table bordercolor = "#229954" border="12" cellspacing="6" cellpadding="8"
		width="100%">
		<tr  bgcolor= "#F8C471" >
			<td style="font-weight: bold;">ID</td>
			<td style="font-weight: bold;">Nombre</td>
			<td style="font-weight: bold;">Tel&eacutefono</td>
			<td style="font-weight: bold;">Email</td>
			<td style=" font-weight: bold;">Edad </td>
			<td style="font-weight: bold;">Nivel en el que ense&ntildea </td>
			<td style=" font-weight: bold;">Genero </td>
		</tr>
		
		<%int con=0;
			for ( Profesor c: listas) {
		%>
		<tr>
			
			<td><%=c.getId()%></td>
			<td><%=c.getName()%></td>
			<td> <%= c.getTelefono() %></td>
			<td><%=c.getEmail()%></td>
			<td><%=c.getEdad() %> </td>
			<td><%= c.getgEstudios()%></td>
			<td><%=c.getGenero()%></td>
			<td>
				<span><a href="/profesors/find?profesorId=<%= c.getId() %>">Ver mas</a></span>
				<span><a href="/profesors/delete?profesorId=<%= c.getId() %>">Eliminar</a></span>
				<span><a href="/profesors/update?profesorId=<%= c.getId() %>">Actualizar</a></span>
			</td>
		</tr>
		<%
			}
		%>
	</table>

	<%
		} else{
	%>
		<tr><td>No hay profesores que mostrar</td></tr>
	<%} %>
	
</center>
</body>
</html>
