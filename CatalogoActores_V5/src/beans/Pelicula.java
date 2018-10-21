package beans;


import java.time.LocalDate;

public class Pelicula {
	

	private String titulo;
	private String director;
	private String vista;
	private LocalDate fechaEstreno;
	private String img;
	private String sinopsis;
	
	
	public Pelicula() {
		super();
	}

	public Pelicula(String titulo, String director, String vista, LocalDate fechaEstreno, String img, String sinopsis){
		super();
		this.titulo = titulo;
		this.director = director;
		this.vista = vista;
		this.fechaEstreno = fechaEstreno;
		this.img = img;
		this.sinopsis = sinopsis;

	}
	
	

	public String getSinopsis() {
		return sinopsis;
	}

	public void setSinopsis(String sinopsis) {
		this.sinopsis = sinopsis;
	}



	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
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

	public String getVista() {
		return vista;
	}

	public void setVista(String vista) {
		this.vista = vista;
	}

	public LocalDate getFechaEstreno() {
		return fechaEstreno;
	}

	public void setFechaEstreno(LocalDate fechaEstreno) {
		this.fechaEstreno = fechaEstreno;
	}

	@Override
	public String toString() {
		return "Pelicula [titulo=" + titulo + ", director=" + director + ", vista=" + vista + ", fechaEstreno="
				+ fechaEstreno + ", img=" + img + ", sinopsis=" + sinopsis + "]";
	}

	


	
	
	
	

}
