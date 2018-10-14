package control;

import java.io.IOException;
import java.util.ArrayList;

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

@WebServlet("/ServletActores")
public class ServletActores extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletActores() {
		super();
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		ArrayList<Pelicula> peliculas;
		ArrayList<Actor> actores;

		try {
			String operacion = request.getParameter("operacion");

			if (operacion.equalsIgnoreCase("actores")) {
				
				actores = new DAOActores().listaActores();
				request.setAttribute("Lista", actores);
				RequestDispatcher view = request.getRequestDispatcher("/ListadoActores.jsp");
				view.forward(request, response);

			} else if (operacion.equalsIgnoreCase("consulta")) {

				String nombre = request.getParameter("nombre");

				actores = new DAOActores().buscarActor(nombre);
				
				Actor actor = actores.get(0);
				request.setAttribute("Actor", actor);
				RequestDispatcher view = request.getRequestDispatcher("/FichaTecnicaActor.jsp");
				view.forward(request, response);

			} else if(operacion.equalsIgnoreCase("suspeliculas")) {
				
				String nombre = request.getParameter("nombre");
				
				peliculas = new DAOActores().listadoPelicuas(nombre);
				request.setAttribute("Lista", peliculas);
				RequestDispatcher view = request.getRequestDispatcher("/camisetas_Todas.jsp");
				view.forward(request, response);
						
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

}

