package controller.users;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.jdo.PersistenceManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.entity.*;
import pmf.entity.*;

public class UsersControllerAdd extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		PersistenceManager persistenceManager = PMF.get().getPersistenceManager();
		String query = "select from "+Role.class.getName()+ " where name != ''";
		List<Role> roles = (List<Role>) persistenceManager.newQuery(query).execute();
		
		request.setAttribute("roles", roles);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/Views/Users/add.jsp");
		dispatcher.forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException{

		PersistenceManager persistenceManager = PMF.get().getPersistenceManager();
		String name = request.getParameter("name");
		String surname = request.getParameter("surname");
		String email = request.getParameter("email");
		String day = request.getParameter("day");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		Date birth = new Date(Integer.parseInt(year)-1900, Integer.parseInt(month)-1, Integer.parseInt(day));
		String gender = request.getParameter("gender");
		String idRol = request.getParameter("role");
		User newUser = new User(name, surname, email, birth, gender, Long.parseLong(idRol));
		try {
			persistenceManager.makePersistent(newUser);
		}catch(Exception e) {
			response.sendRedirect("/index.html");
		}
		finally {
			persistenceManager.close();
		}
		response.sendRedirect("/users");

	}
	
}
