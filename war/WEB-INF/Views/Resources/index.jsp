
<%@ page import="model.entity.Resource"%>
<%@ page import="java.util.List"%>
<%
	List<Resource> resources = (List<Resource>) request.getAttribute("resources");
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
  <h1>Lista de Resources</h1>
 <div class="w3-left">
  	<h4 style="color:blue"><a href="/resources/add">Crear resources</a></h4><br>
  </div>
 <div class="w3-main" style="margin-left:210px;margin-right:10px	"> 
	<%
		if (resources!=null && resources.size()>0){
	%><center>
	 <table  border="10" cellspacing="5" cellpadding="5" width="100%">
			<tr>
				<td style="color:blue" class="title">Id</td>
				<td style="color:blue" class="title">Url</td>
				<td style="color:blue" class="title">Status</td>
				<td style="color:blue" class="title">Fecha de creacion</td>
				<td style="color:blue">Acciones</td>
			</tr>
			<%
				for (int i = resources.size() - 1; i >= 0; i--) {
			%>
			<tr>
				<td><%=resources.get(i).getId()%></td>
				<td><%=resources.get(i).getUrl()%></td>
				<td><%=resources.get(i).isStatus()%></td>
				<td><%=resources.get(i).getDate()%></td>
				<td><a href="resources/view?id=<%=resources.get(i).getId()%>">View</a>
					<a href="resources/edit?id=<%=resources.get(i).getId()%>">Edit</a>
					<a href="resources/delete?id=<%=resources.get(i).getId()%>">Delete</a>
				</td>
					</tr>
			<%
				}
			%>
		</table>
	</center>
	<%
		} else {
	%>
	
		<h3>No hay resources</h3>

	<%
		}
	%>
 </div>
 
  
</center>
</body>
</html>