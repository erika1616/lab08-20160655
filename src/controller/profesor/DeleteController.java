package controller.profesor;
import java.io.IOException;
import java.util.ArrayList;
import model.entity.*;

import javax.jdo.JDOObjectNotFoundException;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
@SuppressWarnings("serial")
public class DeleteController extends HttpServlet {  
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PersistenceManager pm = PMF.get().getPersistenceManager();
		Key k = KeyFactory.createKey(Profesor.class.getSimpleName(), new Long(request.getParameter("profesorId")).longValue());
		try{
			Profesor r = pm.getObjectById(Profesor.class, k);
			if (r !=null){
				Long id = r.getId();
				pm.deletePersistent(r);
				
				response.sendRedirect("/profesors/view");
				pm.close();
			}
		}catch (JDOObjectNotFoundException e) {
			response.sendRedirect("/profesors/view");
		}
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
	doGet(request,response);	
	}
}
