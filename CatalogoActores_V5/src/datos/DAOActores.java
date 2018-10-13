package datos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import beans.Actor;
import beans.Pelicula;

public class DAOActores {

	// Mostrar actores

	public ArrayList<Actor> listaActores() {
		ArrayList<Actor> listaActores = new ArrayList<Actor>();
		Statement st = null;
		ResultSet rs = null;

		try {
			ConexionDB con = new ConexionDB();
			st = con.getConnection().createStatement();
			rs = st.executeQuery("SELECT  NOMBRE, NACIONALIDAD, CANTIDAD_PELICULAS, IMG FROM ACTORES;");
			while (rs.next()) {
				Actor actor = new Actor();
				actor.setNombre(rs.getString("NOMBRE"));
				actor.setNacionalidad(rs.getString("NACIONALIDAD"));
				actor.setCantidadPeliculas(rs.getInt("CANTIDAD_PELICULAS"));
				actor.setImg(rs.getString("IMG"));
 
				listaActores.add(actor);
			}
			con.getConnection().close();
		} catch (SQLException ex) {
			Logger.getLogger(DAOActores.class.getName()).log(Level.SEVERE, null, ex);
		}
		return listaActores;
	}

	// Insertar actor

	public void insertarActor(Actor actor) {

		Statement st = null;

		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			String query = "INSERT INTO ACTORES(NOMBRE, NACIONALIDAD, CANTIDAD_PELICULAS, IMG) VALUES ('" + actor.getNombre()
					+ "','" + actor.getNacionalidad() + "'," + actor.getCantidadPeliculas() + ",'" + actor.getImg() + "');";

			st.executeUpdate(query);

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAOActores.class.getName()).log(Level.SEVERE, null, ex);

		}
	}

	// Eliminar actor

	public void eliminarActor(String nombre) {

		Statement st = null;

		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			String query = "DELETE FROM ACTORES WHERE NOMBRE = '" + nombre + "';";

			st.executeUpdate(query);

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAOActores.class.getName()).log(Level.SEVERE, null, ex);

		}

	}

	// Actualizar actor

	public void modificarActor(String nactor, String nombre, String nacionalidad, String img) {

		Statement st = null;

		try {

			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			String query = "UPDATE ACTORES SET NOMBRE = '" + nombre + "', NACIONALIDAD = '" + nacionalidad
					+ "', IMG = '" + img + "' WHERE NOMBRE = '" + nactor + "';";

			st.executeUpdate(query);

			conexion.getConnection().close();

		} catch (SQLException ex) {

			Logger.getLogger(DAOActores.class.getName()).log(Level.SEVERE, null, ex);

		}
	}

}
