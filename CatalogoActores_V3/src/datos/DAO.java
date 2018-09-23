package datos;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import beans.Actor;
import utilidades.Utilidades;

public class DAO {

	public Connection conexion = null;

	public DAO() {

		conexion = new ConexionDB().getConnection();
	}

	// Mostar todos los actores
	public ArrayList<Actor> listaActores() {
		ArrayList listaActores = new ArrayList<Actor>();
		Statement st = null;
		ResultSet rs = null;

		try {
			ConexionDB con = new ConexionDB();
			st = con.getConnection().createStatement();
			rs = st.executeQuery("SELECT NOMBRE,NACIONALIDAD FROM actores;");
			while (rs.next()) {
				Actor actor = new Actor();
				actor.setNombre(rs.getString("NOMBRE"));
				actor.setNacionalidad(rs.getString("NACIONALIDAD"));
				listaActores.add(actor);
			}
			con.getConnection().close();
		} catch (SQLException ex) {
			Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return listaActores;
	}

	// Consultar actores por nombre

	public List<Actor> consultarActor(String nombre) {

		Statement st = null;
		ResultSet rs = null;

		List<Actor> listaActores = new ArrayList<>();
		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			rs = st.executeQuery("SELECT NOMBRE,NACIONALIDAD FROM actores WHERE NOMBRE= '" + nombre + "';");
			while (rs.next()) {
				Actor actor = new Actor();
				actor.setNombre(rs.getString("NOMBRE"));
				actor.setNacionalidad(rs.getString("NACIONALIDAD"));
				listaActores.add(actor);
			}

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);

		}
		return listaActores;
	}

	// Insertar actores

	public void insertarActor(Actor actor) {

		Statement st = null;

		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			String query = "INSERT INTO actores(NOMBRE, NACIONALIDAD, CANTIDAD_PELICULAS) VALUES ('" + actor.getNombre() + "', '" + actor.getNacionalidad() + "', " + actor.getCantidadPeliculas() + ");";

			st.executeUpdate(query);

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);

		}

	}
	
	//Eliminar actores
	
	public void eliminarActor(String nombre) {
		
		Statement st = null;

		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			String query = "DELETE FROM actores WHERE NOMBRE = '" + nombre + "';";

			st.executeUpdate(query);

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);

		}
		
	}
	
	//Actualizar actores
	
	public void modificarActor(String nbusqueda, String nombre, String nacionalidad) {
		
		Statement st = null;

		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			String query = "UPDATE actores SET NOMBRE = '" + nombre + "', NACIONALIDAD = '" + nacionalidad + "' WHERE NOMBRE = '" + nbusqueda + "';";

			st.executeUpdate(query);

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);

		}
	}



}
