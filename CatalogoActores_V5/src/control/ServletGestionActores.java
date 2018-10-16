package control;

import java.io.IOException;
import java.text.DateFormat;

import java.util.ArrayList;
import java.util.Date;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Actor;
import beans.Pelicula;
import datos.DAOActores;
import datos.DAOPeliculas;

@WebServlet("/ServletFormularioActor")
public class ServletGestionActores extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletGestionActores() {
        super();
    }
 
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Actor a = new Actor();

		try {
			String operacion = request.getParameter("operacion");
					
			if(operacion.equalsIgnoreCase("alta")) {
				a.setNombre(request.getParameter("nombre"));
				a.setNacionalidad(request.getParameter("nacionalidad"));
				a.setImg("img/" + request.getParameter("img"));
				
				
				new DAOActores().insertarActor(a);
				RequestDispatcher view = request.getRequestDispatcher("/formularioPeliculas.jsp");
				view.forward(request, response);

			} else if(operacion.equalsIgnoreCase("baja")) {
				String nombre = request.getParameter("nombre");
				
				new DAOActores().eliminarActor(nombre);
				RequestDispatcher view = request.getRequestDispatcher("/formularioPeliculas.jsp");
				view.forward(request, response);
				
				
			}else if(operacion.equalsIgnoreCase("modificar")) {
				
					String nactor = request.getParameter("nactor");
								
					String nombre = request.getParameter("nombre");
					String nacionalidad = request.getParameter("nacionalidad");
					String img = request.getParameter("img").trim();
					if(img.startsWith("img/")){
						img = request.getParameter("img");
					}else {
						
						img = "img/" + request.getParameter("img");
					}
									
					new DAOActores().modificarActor(nactor, nombre, nacionalidad, img);
					
					RequestDispatcher view = request.getRequestDispatcher("/formularioPeliculas.jsp");
					view.forward(request, response);

			}
		else if(operacion.equalsIgnoreCase("consulta")) {
				
				String nombre = request.getParameter("nombre");

				ArrayList<Actor> actores = new ArrayList<Actor>();
				actores = new DAOActores().buscarActor(nombre);
						
				request.setAttribute("ActorUpdate", actores);
				
				RequestDispatcher view = request.getRequestDispatcher("/formularioPeliculas.jsp");
				view.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

}
