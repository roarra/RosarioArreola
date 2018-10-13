package control;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.List;

import beans.Actor;
import beans.Pelicula;
import datos.DAO;
import datos.DAOPeliculas;
import utilidades.Utilidades;

public class Prueba {

	public void pruebasUno() {

		DAOPeliculas gestionBBDD = new DAOPeliculas();

//		List<Actor> alan = gestionBBDD.consultarActor("Alan Rickman");
//
//		for (Actor elemento : alan) {
//
//			Utilidades.write(elemento.toString());
//		}

		List<Pelicula> lista = gestionBBDD.listaPeliculas();

		for (Pelicula elemento : lista) {

			Utilidades.write(elemento.toString());
		}

	}

	public void pruebasDos() {

		Actor a1 = new Actor("Diego Luna", "Mexican");
		Actor a2 = new Actor("Antonio de la Torre", "Spanish");
		Actor a3 = new Actor("David Tennant", "Inglés");

		DAO gestionBBDD = new DAO();

	}


	public void pruebasTres() {

//		Pelicula p1 = new Pelicula("Harry Potter 3", "Alfonso Cuarón", true, 2004/07/08, 1);
//		Pelicula p2 = new Pelicula("Thor", "Kenneth Brannagh", true, LocalDate(2011, 3, 29), 2);
//		Pelicula p3 = new Pelicula("Doctor Strange", "Scott Derrickson", true, LocalDate(2016, 10, 28), 3);
//		Pelicula p4 = new Pelicula("It: Chapter Two", "Andy Muschietti", false, LocalDate(2019, 9, 06), 4);
//		Pelicula p5 = new Pelicula("Shame", "Steve McQueen", true, LocalDate(2012, 2, 17), 5);
//		Pelicula p6 = new Pelicula("La hora más oscura", "Kathryn Bigelow", false, LocalDate(2013, 1, 4), 6);

		DAOPeliculas gestionBBDD2 = new DAOPeliculas();

//		gestionBBDD2.insertarPeliculas(p1);
//		gestionBBDD2.insertarPeliculas(p2);
//		gestionBBDD2.insertarPeliculas(p3);
//		gestionBBDD2.insertarPeliculas(p4);
//		gestionBBDD2.insertarPeliculas(p5);
//		gestionBBDD2.insertarPeliculas(p6);

		//gestionBBDD2.eliminarPelicula("Shame");

		List<Pelicula> lista = gestionBBDD2.listaPeliculas();

		for (Pelicula elemento : lista) {

			Utilidades.write(elemento.toString());
		}

	}

	public void pruebasCuatro() {

		DAOPeliculas gestionBBDD2 = new DAOPeliculas();

		List<Pelicula> thor = gestionBBDD2.buscarPelicula("Thor");

		for (Pelicula elemento : thor) {

			Utilidades.write(elemento.toString());
		}

		gestionBBDD2.modificarPelicula("Thor", "Thorki lover", "Kenneth Branagh el Grande", false,
				LocalDate(2018, 8, 25), 2);
		
	}
	

}
