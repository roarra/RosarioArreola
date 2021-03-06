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
	
	
	//Mostar actores
	public ArrayList<Actor> listaActores() {
		ArrayList listaActores = new ArrayList<Actor>();
        Statement st = null;
        ResultSet rs = null;
        
        try {
            ConexionDB con = new ConexionDB();
            st = con.getConnection().createStatement();
            rs = st.executeQuery("SELECT NOMBRE,NACIONALIDAD FROM actores;" );
            while (rs.next()) {   	
            	Actor actor  = new Actor();
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
	
	
	
	//Consultar actores por nombre
	
	public Actor consultarActor(String nombre) {
		
		Statement st = null;
		ResultSet rs = null;
		Actor actor = new Actor();
		try {
			
			ConexionDB conexion = new ConexionDB();
			st = conexion.getConnection().createStatement();

			rs = st.executeQuery("SELECT NOMBRE,NACIONALIDAD FROM actores WHERE NOMBRE= '" + nombre + "';");
			
			actor.setNombre(rs.getString("NOMBRE"));
			actor.setNacionalidad(rs.getString("NACIONALIDAD"));
			
			conexion.getConnection().close();
			
		} catch (SQLException ex) {
			
			Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);

		}
		return actor;
	}
	
	
	
	
	
	
	
	
//	List <Actor> actores = new ArrayList <>();
//	
//	public void insertarActor(Actor actor) {
//		
//		actores.add(actor);
//	}
//	
//	public void eliminarActor(String nombre) {
//		for(int i=0; i<actores.size();i++) {
//			
//			if(nombre.equalsIgnoreCase(actores.get(i).getNombre())) {
//				
//				actores.remove(i);
//			}
//			
//			
//		}
//	}
//	
//	public Actor buscarActor(String nombre) {
//		
//		for(Actor elemento: actores) {
//			
//			if(nombre.equalsIgnoreCase(elemento.getNombre())) {
//				return elemento;
//			}
//		}
//		return null;
//	}
//	
//	public void mostrarActores(){
//		
//		for(Actor elemento: actores) {
//			
//			Utilidades.write(elemento.toString());
//		}
//	}

}
