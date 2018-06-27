package controller.profesor;
import java.util.*;
import model.entity.*;
import java.io.IOException;  
import java.io.PrintWriter;

import javax.jdo.PersistenceManager;
import javax.jws.WebService;
import javax.servlet.*;  
import javax.servlet.http.*;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;  
@SuppressWarnings("serial")
public class UpdateController extends HttpServlet {  
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response)   
	         throws ServletException, IOException {  
		PersistenceManager pm = PMF.get().getPersistenceManager();
		Key k = KeyFactory.createKey(Profesor.class.getSimpleName(), new Long(request.getParameter("profesorId")).longValue());
		Profesor r = pm.getObjectById(Profesor.class, k);
		
		request.setAttribute("profesores", r);
		
		request.getRequestDispatcher("/WEB-INF/Views/profesors/update.jsp").forward(request, response);
		pm.close();
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)   
         throws ServletException, IOException {  
			PersistenceManager pm = PMF.get().getPersistenceManager();
			Key k = KeyFactory.createKey(Profesor.class.getSimpleName(), new Long(request.getParameter("profesorId")).longValue());
			Profesor r = pm.getObjectById(Profesor.class, k);
			
			String name=request.getParameter("name");  
	        String tel=request.getParameter("telefono");
	        String email=request.getParameter("email");
	        int edad=Integer.parseInt(request.getParameter("edad"));
	        String gEstudios=request.getParameter("gEstudios");
	        String genero=request.getParameter("genero");
	        
	    
			
		r.setName(name);
		r.setTelefono(tel);
		r.setEmail(email);
		r.setEdad(edad);
		r.setgEstudios(gEstudios);
		r.setGenero(genero);
		
		response.sendRedirect("/profesors/view");
		pm.close();
		
	}	  
}
