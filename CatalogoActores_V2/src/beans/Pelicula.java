package beans;

import java.util.Date;

public class Pelicula {
	
	private String titulo;
	private String director;
	private boolean vista;
	private Date fechaEstreno;
	
	public Pelicula() {
		super();
	}

	public Pelicula(String titulo, String director, boolean vista, Date fechaEstreno) {
		super();
		this.titulo = titulo;
		this.director = director;
		this.vista = vista;
		this.fechaEstreno = fechaEstreno;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(String director) {
		this.director = director;
	}

	public boolean isVista() {
		return vista;
	}

	public void setVista(boolean vista) {
		this.vista = vista;
	}

	public Date getFechaEstreno() {
		return fechaEstreno;
	}

	public void setFechaEstreno(Date fechaEstreno) {
		this.fechaEstreno = fechaEstreno;
	}

	@Override
	public String toString() {
		return "Pelicula [titulo=" + titulo + ", director=" + director + ", vista=" + vista + ", fechaEstreno="
				+ fechaEstreno + "]";
	}
	
	
	
	

}
