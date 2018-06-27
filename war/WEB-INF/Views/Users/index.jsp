<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="controller.users.*" %>
<%@ page import="model.entity.User"%>
<%@ page import="java.util.List"%>
<%
	List<User> users = (List<User>) request.getAttribute("users");
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
  <h1>Lista de usuarios</h1>
  <div class="w3-left"> 
  	<h4 style="color:blue"><a href="/users/add">Crear usuarios</a></h4><br>
  </div>
 <div class="w3-main" style="margin-left:210px;margin-right:10px	"> 
  	 <%
		if (users!=null && users.size()>0){
	%>
  <table border="10" cellspacing="5" cellpadding="5" width="100%">
			<tr>
				<td  style="color:blue" class="title">Id</td>
				<td style="color:blue" class="title">Rol</td>
				<td style="color:blue" class="title">Name</td>
				<td style="color:blue" class="title">Email</td>
				<td style="color:blue" class="title">Genero</td>
				<td style="color:blue" class="title">Status</td>
				<td style="color:blue" class="title">Fecha de creacion</td>
				<td style="color:blue"> Acciones</td>
			</tr>
			<%
				for (int i = users.size() - 1; i >= 0; i--) {
			%>
			<tr>
				<td><%=users.get(i).getId()%></td>
				<td><%=users.get(i).getRoleId()%></td>
				<td><%=users.get(i).getNombre()%></td>
				<td><%=users.get(i).getEmail()%></td>
				<td><%=users.get(i).getGender()%></td>
				<td><%=users.get(i).getStatus()%></td>
				<td><%=users.get(i).getCreated()%></td>
				<td><a href="/users/view?id=<%=users.get(i).getId()%>">View</a>
					<a href="/users/edit?id=<%=users.get(i).getId()%>">Edit</a> <a
					href="/users/delete?id=<%=users.get(i).getId()%>">Delete</a></td>
			</tr>
			<%
				}
			%>
		</table>
		<%
		} else {
	%>
		<h3>No hay usuarios</h3>
	<%
		}
	%>
  
  </div>
 
  
</center>

</body>
</html>