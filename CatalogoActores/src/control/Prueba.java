package control;

import beans.Actor;
import datos.DAO;
import utilidades.Utilidades;

public class Prueba {

	public void pruebasUno() {
		
		Actor a1 = new Actor("Alan Rickman", "Ingl�s");
		Actor a2 = new Actor("Tom Hiddleston", "Ingl�s");
		Actor a3 = new Actor("Benedict Cumberbatch", "Ingl�s");
		Actor a4 = new Actor("James Mcavoy", "Escoc�s");
		Actor a5 = new Actor("Michael Fassbender", "Irland�s");
		Actor a6 = new Actor("Jessica Chastain", "Estadounidense");
		
		DAO gestionBBDD = new DAO();
		
		gestionBBDD.insertarActor(a1);
		gestionBBDD.insertarActor(a2);
		gestionBBDD.insertarActor(a3);
		gestionBBDD.insertarActor(a4);
		gestionBBDD.insertarActor(a5);
		gestionBBDD.insertarActor(a6);
		
		gestionBBDD.mostrarActores();
		
		Utilidades.write(gestionBBDD.buscarActor("Alan Rickman").toString());
		
		gestionBBDD.eliminarActor("Michael Fassbender");
		
		gestionBBDD.mostrarActores();
	}
}
