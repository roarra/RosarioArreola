package control;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

import beans.Pelicula;
import datos.DAOPeliculas;
import utilidades.Formater;
import utilidades.Utilidades;

public class Main {

	public static void main(String[] args) throws ParseException {
		
		
		
		//new Prueba().pruebasDos();
		
		//new Prueba().pruebasUno();
		
//		new Prueba().pruebasTres();
//		
		//new Prueba().pruebasCuatro();
		
		
		
		
		ArrayList<Pelicula> pelis = new DAOPeliculas().listaPeliculas();
		
		for(Pelicula elemento: pelis) {
			
			Utilidades.write(elemento.toString());
		}



	}

}
