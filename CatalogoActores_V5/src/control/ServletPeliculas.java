package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Pelicula;

import datos.DAOPeliculas;

@WebServlet("/ServletPeliculas")
public class ServletPeliculas extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletPeliculas() {
		super();
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		ArrayList<Pelicula> peliculas;

		try {
			String operacion = request.getParameter("operacion");


			if (operacion.equalsIgnoreCase("peliculas")) {

				peliculas = new DAOPeliculas().listaPeliculas();
				request.setAttribute("Lista", peliculas);
				RequestDispatcher view = request.getRequestDispatcher("/camisetas_Todas.jsp");
				view.forward(request, response);

			} else if (operacion.equalsIgnoreCase("consulta")) {

				String titulo = request.getParameter("titulo");

				peliculas = new DAOPeliculas().buscarPelicula(titulo);
				
				Pelicula pelicula = peliculas.get(0);
				request.setAttribute("Pelicula", pelicula);
				RequestDispatcher view = request.getRequestDispatcher("/fichaTecnica.jsp");
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
