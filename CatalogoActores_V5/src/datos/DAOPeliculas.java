package datos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;

import java.util.logging.Level;
import java.util.logging.Logger;


import beans.Pelicula;

public class DAOPeliculas extends Pelicula {

	// Mostrar pel�culas

	public ArrayList<Pelicula> listaPeliculas() {
		ArrayList<Pelicula> listaPeliculas = new ArrayList<Pelicula>();
		Statement st = null;
		ResultSet rs = null;

		try {
			ConexionDB con = new ConexionDB();
			st = con.getConnection().createStatement();
			rs = st.executeQuery("SELECT  TITULO,DIRECTOR,VISTA,FECHA_ESTRENO, IMG, SINOPSIS FROM peliculas;");
			while (rs.next()) {
				Pelicula pelicula = new Pelicula();
				pelicula.setTitulo(rs.getString("TITULO"));
				pelicula.setDirector(rs.getString("DIRECTOR"));
				pelicula.setVista(rs.getString("VISTA"));
				pelicula.setFechaEstreno(rs.getDate("FECHA_ESTRENO").toLocalDate());
				pelicula.setImg(rs.getString("IMG"));
				pelicula.setSinopsis(rs.getString("SINOPSIS"));
				listaPeliculas.add(pelicula);
			}
			con.getConnection().close();
		} catch (SQLException ex) {
			Logger.getLogger(DAOPeliculas.class.getName()).log(Level.SEVERE, null, ex);
		}
		return listaPeliculas;
	}

	// insertar peliculas

	public void insertarPeliculas(Pelicula pelicula) {

		Statement st = null;

		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			String query = "INSERT INTO peliculas(TITULO, DIRECTOR, VISTA, FECHA_ESTRENO, IMG, SINOPSIS) VALUES ('"
					+ pelicula.getTitulo() + "','" + pelicula.getDirector() + "','" + pelicula.getVista() + "','"
					+ pelicula.getFechaEstreno() + "','" + pelicula.getImg() + "','" + pelicula.getSinopsis() + "');";

			st.executeUpdate(query);

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAOPeliculas.class.getName()).log(Level.SEVERE, null, ex);

		}
	}

	// Eliminar pel�culas

	public void eliminarPelicula(String titulo) {

		Statement st = null;

		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			String query = "DELETE FROM peliculas WHERE TITULO = '" + titulo + "';";

			st.executeUpdate(query);

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAOPeliculas.class.getName()).log(Level.SEVERE, null, ex);

		}

	}

	// Buscar pel�culas por nombre

	public ArrayList<Pelicula> buscarPelicula(String titulo) {

		Statement st = null;
		ResultSet rs = null;

		ArrayList<Pelicula> listaPeliculas = new ArrayList<>();
		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			rs = st.executeQuery(
					"SELECT TITULO, DIRECTOR, VISTA, FECHA_ESTRENO, IMG, SINOPSIS FROM peliculas WHERE TITULO= '" + titulo
							+ "';");
			while (rs.next()) {
				Pelicula pelicula = new Pelicula();
				pelicula.setTitulo(rs.getString("TITULO"));
				pelicula.setDirector(rs.getString("DIRECTOR"));
				pelicula.setVista(rs.getString("VISTA"));
				pelicula.setFechaEstreno(rs.getDate("FECHA_ESTRENO").toLocalDate());
				pelicula.setImg(rs.getString("IMG"));
				pelicula.setSinopsis(rs.getString("SINOPSIS"));
				listaPeliculas.add(pelicula);
			}

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAOPeliculas.class.getName()).log(Level.SEVERE, null, ex);

		}
		return listaPeliculas;
	}

	// Actualizar pel�culas

	public void modificarPelicula(String tbusqueda, String titulo, String director, String vista, LocalDate fechaEstreno, String img, String sinopsis) {

		Statement st = null;

		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			String query = "UPDATE peliculas SET TITULO = '" + titulo + "', DIRECTOR = '" + director + "', VISTA = '"
					+ vista + "', FECHA_ESTRENO = " + fechaEstreno + ", IMG = '" + img + "', SINOPSIS = '" + sinopsis + "' WHERE TITULO = '"
					+ tbusqueda + "';";

			st.executeUpdate(query);

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAOPeliculas.class.getName()).log(Level.SEVERE, null, ex);

		}
	}
	
	//Meter actor y película en la tabla Reparto
	
	public void insertarReparto(String pelicula, String actor) {
		Statement st = null;
		
		try {
			
			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();
		
		String query = "INSERT INTO REPARTO (PELICULA, ACTOR) VALUES ('" + pelicula + "', '" + actor + "');";
		st.executeUpdate(query);

		conexion.getConnection().close();

		} catch (SQLException ex) {
	
			Logger.getLogger(DAOPeliculas.class.getName()).log(Level.SEVERE, null, ex);
	
		}
	}

}
