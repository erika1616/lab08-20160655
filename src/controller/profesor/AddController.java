package controller.profesor;
import java.io.IOException;
import java.util.List;

import model.entity.*;
import javax.jdo.PersistenceManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;

@SuppressWarnings("serial")
 
public class AddController extends HttpServlet {  
	@SuppressWarnings("unchecked")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException  {
		doPost(request,response);
	}
	    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)   
         throws ServletException, IOException {  
          
		boolean existe = false;
		String res = request.getParameter("name");
		if(res!=null && res.length()!=100 ){ 
		
        String name=request.getParameter("name");  
        String tel=request.getParameter("telefono");
        String email=request.getParameter("email");
        int edad=Integer.parseInt(request.getParameter("edad"));
        String gEstudios=request.getParameter("gEstudios");
        String genero=request.getParameter("genero");
        
        PersistenceManager pm = PMF.get().getPersistenceManager();
        String query = "select  from " + Profesor.class.getName();
		List<Profesor> listas = (List<Profesor>) pm.newQuery(query).execute();
    
		for(Profesor c : listas){
			if(c.getName().equals(name)||c.getEmail().equals(email))
				existe=true;
		}
		
		
		if(!existe){
	
        Profesor nuevo= new Profesor(name, tel, email,edad,gEstudios,genero);  
		try{
			pm.makePersistent(nuevo);
			response.sendRedirect("/profesors/view");
			
		}
		finally {
			pm.close();
		}
		}
		else {
			request.setAttribute("existe", existe);
			request.getRequestDispatcher("/WEB-INF/Views/profesors/add.jsp").forward(request, response);
			}
		}
		
		else{
			request.setAttribute("existe", existe);
			request.getRequestDispatcher("/WEB-INF/Views/profesors/add.jsp").forward(request, response);
			
		}
		
	}

}
  

