<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.profesor.*" %>
<%@ page import="java.util.*" %>
<% boolean existe = (Boolean) request.getAttribute("existe");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UFT-8">
<script type="text/javascript">
 function checkSubmit() {
	    document.getElementById("btsubmit").value = "Enviando...";
	    document.getElementById("btsubmit").disabled = true;
	    return true;
	}
 </script>
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
		<h1 align="center">AGREGAR UN PROFESOR</h1>
	</span>
	<% if(existe){ %>
	<p>Nombre del profesor ya existe </p>
	<% } %>
	<p></p>
	<form method="post" action="/profesors/add" onsubmit="return checkSubmit();">
		<input type="hidden" name="action" value="crearProfesor" />
		<center>
		<table bordercolor = "#229954" border="10" cellspacing="5" cellpadding="5">
			<p>No se aceptan caracteres que no sean letras o numeros</p>
			<tr>
				<td style="font-weight: bold;">Nombre del profesor:</td>
				<td bgcolor="#ffffff"><input type="input" name="name" pattern="[A-Za-z0-9 ]*" minlength="3" maxlength="80" required></td>
			</tr>
			<tr>
				<td style="font-weight: bold;">Teléfono:</td>
				<td bgcolor="#ffffff"><input type="number" name="telefono" min="100000" max="1000000000" required></td>
			</tr>
			<tr>
				<td style="font-weight: bold;">Correo Electrónico:</td>
				<td bgcolor="#ffffff"><input type="email" name="email"></td>
			</tr>
			<tr>
				<td style=" font-weight: bold;">Edad:</td>
				<td bgcolor="#ffffff"><input type="number" name="edad" min="12" max="90" required></td>
			</tr>
		
			<td style="font-weight: bold;">Nivel en el que enseña: </td>
				<td><select name="gEstudios" style="width: 150px" required>
						
						<option>Primaria</option>
						<option>Secundaria</option>
				</select></td>
				
				<tr>
				<td style=" font-weight: bold;">Genero: </td>
				<td><select name="genero" style="width: 150px" required>
						<option>Masculino</option>
						<option>Femenino</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="2" bgcolor="#ffffff" align="center"><input
					type="submit" value="Submit" id="btsubmit"></td>
			</tr>
		</table>
		</center>
	</form>
</center>
</body>
</html>