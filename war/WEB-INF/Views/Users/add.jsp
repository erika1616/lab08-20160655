<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.Role"%>
<%@ page import="model.entity.User"%>
<%
	List<Role> roles = (List<Role>) request.getAttribute("roles");
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
	<form action="/users/add" method="post">
		<p>Nombre:</p>
		<input type="text" name="name">
		<p>Apellidos:</p>
		<input type="text" name="apel">
		<p>Email:</p>
		<input type="text" name="email">
		<p>Fecha de nacimiento</p>
		<p>Día:</p>
		<select name="day">
			<%
				for (int i = 1; i <= 31; i++) {
			%>
			<option value="<%=i%>"><%=i%></option>
			<%
				}
			%>
		</select>
		<p>Mes:</p>
		<select name="month">
			<%
				for (int i = 1; i <= 12; i++) {
			%>
			<option value="<%=i%>"><%=i%></option>
			<%
				}
			%>
		</select>
		<p>Año:</p>
		<select name="year">
			<%
				for (int i = 1940; i <= 2018; i++) {
			%>
			<option value="<%=i%>"><%=i%></option>
			<%
				}
			%>
		</select>
		<p>Genero:</p>
		<input type="radio" name="gender" value="mujer">Mujer <input
			type="radio" name="gender" value="hombre" checked>Hombre
		<p>Rol:</p>
		<select name="role">
			<%
				for (int i = 0; i < roles.size(); i++) {
					Role r = roles.get(i);
			%>
			<option value="<%=r.getId()%>"><%=r.getName()%></option>
			<%
				}
			%>
		</select> <p></p><p><input type="submit" value="Send"></p>
	</form>
	<a href="/users" class="btn btn-info"  role="button"  >Retornar</a>
	</center>

</body>
</html>