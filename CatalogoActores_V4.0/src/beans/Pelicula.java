package beans;

import java.util.Date;

public class Pelicula {
	
	private int id;
	private String titulo;
	private String director;
	private boolean vista;
	private Date fechaEstreno;
	private int idActores;
	private String img;
	
	public Pelicula() {
		super();
	}

	public Pelicula(String titulo, String director, boolean vista, Date fechaEstreno, int idActores, int id, String img) {
		super();
		this.titulo = titulo;
		this.director = director;
		this.vista = vista;
		this.fechaEstreno = fechaEstreno;
		this.idActores = idActores;
		this.id = id;
		this.img = img;
	}
	
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public int getIdActores() {
		return idActores;
	}

	public void setIdActores(int idActores) {
		this.idActores = idActores;
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
