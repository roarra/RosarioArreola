package control;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Pelicula;
import datos.DAOPeliculas;

@WebServlet("/ServletFormularioPelicula")
public class ServletGestionPeliculas extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletGestionPeliculas() {
        super();
    }
 
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		Pelicula p = new Pelicula();

		try {
			String operacion = request.getParameter("operacion");
					
			if(operacion.equalsIgnoreCase("alta")) {
				
				p.setTitulo(request.getParameter("titulo"));
				p.setDirector(request.getParameter("director"));
				p.setVista(Boolean.parseBoolean(request.getParameter("vista")));
//				p.setFechaEstreno(new SimpleDateFormat().parse((request.getParameter("fecha"))));
				p.setIdActores(Integer.parseInt(request.getParameter("idactores")));
				p.setImg("img/" + request.getParameter("img"));
				p.setSinopsis(request.getParameter("sinopsis"));
				
				new DAOPeliculas().insertarPeliculas(p);
				RequestDispatcher view = request.getRequestDispatcher("/formularioPeliculas.jsp");
				view.forward(request, response);

			} else if(operacion.equalsIgnoreCase("baja")) {
				String titulo = request.getParameter("titulo");
				
				new DAOPeliculas().eliminarPelicula(titulo);
				RequestDispatcher view = request.getRequestDispatcher("/formularioPeliculas.jsp");
				view.forward(request, response);
				
				
			}else if(operacion.equalsIgnoreCase("modificar")) {
				
					String tbusqueda = request.getParameter("tbusqueda");
								
					String titulo = request.getParameter("titulo");
					String director = request.getParameter("director");
					boolean vista = Boolean.parseBoolean(request.getParameter("vista"));
					Date fechaEstreno = null;
					int idActores = Integer.parseInt(request.getParameter("idactores"));
					String img = request.getParameter("img");
					String sinopsis = request.getParameter("sinopsis");
					
									
					new DAOPeliculas().modificarPelicula(tbusqueda, titulo, director, vista, fechaEstreno, idActores, img, sinopsis);
					
					RequestDispatcher view = request.getRequestDispatcher("/formularioPeliculas.jsp");
					view.forward(request, response);

			}
		else if(operacion.equalsIgnoreCase("consulta")) {
				
				String titulo = request.getParameter("titulo");

				ArrayList<Pelicula> peliculas = new ArrayList<Pelicula>();
				peliculas = new DAOPeliculas().buscarPelicula(titulo);
						
				request.setAttribute("PeliculaUpdate", peliculas);
				
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
