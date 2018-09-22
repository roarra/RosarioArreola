package datos;

import java.util.ArrayList;
import java.util.List;

import beans.Actor;
import utilidades.Utilidades;

public class DAO {
	
	List <Actor> actores = new ArrayList <>();
	
	public void insertarActor(Actor actor) {
		
		actores.add(actor);
	}
	
	public void eliminarActor(String nombre) {
		for(int i=0; i<actores.size();i++) {
			
			if(nombre.equalsIgnoreCase(actores.get(i).getNombre())) {
				
				actores.remove(i);
			}
			
			
		}
	}
	
	public Actor buscarActor(String nombre) {
		
		for(Actor elemento: actores) {
			
			if(nombre.equalsIgnoreCase(elemento.getNombre())) {
				return elemento;
			}
		}
		return null;
	}
	
	public void mostrarActores(){
		
		for(Actor elemento: actores) {
			
			Utilidades.write(elemento.toString());
		}
	}

}
