<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.entity.Access"%>
<%@ page import="java.util.List"%>
<%
	List<Access> access = (List<Access>) request.getAttribute("access");
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
<h1>Lista de Access</h1>
<div class="w3-left"> <a href="/access/add">Crear access</a></div><br>
	<%
		if (access!=null && access.size() > 0) {
	%>
	<table border="8" cellspacing="5" cellpadding="5" width="100%">
			<tr>
				<td style="color:blue" class="title">Id</td>
				<td style="color:blue" class="title">Rol</td>
				<td style="color:blue" class="title">Url</td>
				<td style="color:blue" class="title">Status</td>
				<td style="color:blue" class="title">Fecha de creacion</td>
				<td style="color:blue">Acciones</td>
			</tr>
			<%
				for (int i = access.size() - 1; i >= 0; i--) {
			%>
			<tr>
				<td><%=access.get(i).getId()%></td>
				<td><%=access.get(i).getRoleId()%></td>
				<td><%=access.get(i).getUrlId()%></td>
				<td><%=access.get(i).getStatus()%></td>
				<td><%=access.get(i).getCreated()%></td>
				<td><a href="access/view?id=<%=access.get(i).getId()%>">View</a>
					<a href="access/edit?id=<%=access.get(i).getId()%>">Edit</a> <a
					href="access/delete?id=<%=access.get(i).getId()%>">Delete</a></td>
			</tr>
		<%
				}
			%>
		</table>
	
	<%
		} else {
	%>
	
		<h3>Acceso denegado o no hay Access</h3>

	<%
		}
	%>
 </center>
 
 
</body>
</html>