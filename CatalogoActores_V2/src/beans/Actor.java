package beans;

import java.util.List;

public class Actor extends Persona{
	
	private List <Pelicula> peliculas;
	private int cantidadPeliculas;
	
	public Actor() {
		super();
	}

	public Actor(String nombre, String nacionalidad) {
		super(nombre, nacionalidad);
//		this.peliculas = peliculas;
//		this.cantidadPeliculas = peliculas.size();
	}

	public List<Pelicula> getPeliculas() {
		return peliculas;
	}

	public void setPeliculas(List<Pelicula> peliculas) {
		this.peliculas = peliculas;
	}

	public int getCantidadPeliculas() {
		return cantidadPeliculas;
	}

	@Override
	public String toString() {
		return "Actor [peliculas=" + peliculas + ", cantidadPeliculas=" + cantidadPeliculas + ", toString()="
				+ super.toString() + "]";
	}
	
	

	
	
	
	
	

}
