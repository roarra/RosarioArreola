package control;

import java.util.List;

import beans.Actor;
import datos.DAO;
import utilidades.Utilidades;

public class Prueba {

	public void pruebasUno() {
		
		
		DAO gestionBBDD = new DAO();
		
		List <Actor> alan = gestionBBDD.consultarActor("Alan Rickman");
		
		for(Actor elemento: alan) {
			
			Utilidades.write(elemento.toString());
		}
		
		List <Actor>lista = gestionBBDD.listaActores();
		
		for(Actor elemento: lista) {
			
			Utilidades.write(elemento.toString());
		}
		

	}
	
	public void pruebasDos() {
		
		Actor a1 = new Actor("Diego Luna", "Mexican");
		Actor a2 = new Actor("Antonio de la Torre", "Spanish");
		Actor a3 = new Actor("David Tennant", "Inglés");
		
		DAO gestionBBDD = new DAO();
		
		gestionBBDD.modificarActor("Mat Smith", "Matt Smith", "English");
		
		
	}
	
	
}
