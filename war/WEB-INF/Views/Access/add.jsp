<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.entity.*"%>
<%@ page import="java.util.List"%>
<%
	List<Role> roles = (List<Role>) request.getAttribute("roles");
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
	<%
		if (roles.size() > 0 && resources.size() > 0) {
	%>
	<form action="/access/add" method="post">
		<p>Role:</p>
		<select name="roleId">
			<%
				for (int i = 0; i < roles.size(); i++) {
						Role role = roles.get(i);
			%>
			<option value="<%=role.getId()%>"><%=role.getName()%></option>
			<%
				}
			%>
		</select>
		<p>Resource:</p>
		<select name="urlId">
			<%
				for (int i = 0; i < resources.size(); i++) {
						Resource resource = resources.get(i);
			%>
			<option value="<%=resource.getId()%>"><%=resource.getUrl()%></option>
			<%
				}
			%>
		</select>
		<input type="submit" value="Send">
	</form>
	<a href="/access" class="btn btn-info"  role="button"  >Retornar</a>
	<%
		} else {
	%>
	
	<a href="/access" class="btn btn-info"  role="button"  >Retornar</a>
	<%
		}
	%>

	
</center>
</body>
</html>