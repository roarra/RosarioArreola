package control;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import beans.Pelicula;
import datos.DAOPeliculas;
import utilidades.Formater;

public class Main {

	public static void main(String[] args) throws ParseException {
		
		
		
		//new Prueba().pruebasDos();
		
		//new Prueba().pruebasUno();
		
//		new Prueba().pruebasTres();
//		
		//new Prueba().pruebasCuatro();
		
		
		
		LocalDate fecha = LocalDate.parse("2004-09-22");
		
		
		Pelicula pelicula = new Pelicula("Pedro picapiedra", "David", "si", fecha, "rerwr", "weqeq");
		
		System.out.println(fecha);
		//new DAOPeliculas().insertarPeliculas(pelicula);



	}

}
