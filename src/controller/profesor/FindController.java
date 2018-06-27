package controller.profesor;

import model.entity.*;
import java.io.IOException;

import javax.jdo.PersistenceManager;
import javax.servlet.*;  
import javax.servlet.http.*;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;  
@SuppressWarnings("serial")

public class FindController extends HttpServlet {  
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
         throws ServletException, IOException {  

		PersistenceManager pm = PMF.get().getPersistenceManager();
		Key k = KeyFactory.createKey(Profesor.class.getSimpleName(), Long.parseLong(request.getParameter("profesorId")));
		Profesor r = pm.getObjectById(Profesor.class, k);
		request.setAttribute("profesores", r);
		request.getRequestDispatcher("/WEB-INF/Views/profesors/read.jsp").forward(request, response);
		pm.close();
		
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)   
         throws ServletException, IOException {  
		doGet(request,response);
	     
	}
}
