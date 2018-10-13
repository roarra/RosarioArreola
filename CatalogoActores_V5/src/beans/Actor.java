package beans;

import java.util.ArrayList;
import java.util.List;

public class Actor extends Persona{
	
	private int cantidadPeliculas;
	private String img;
	
	public Actor() {
		super();
	}

	public Actor(String nombre, String nacionalidad, String img) {
		super(nombre, nacionalidad);

		cantidadPeliculas = 0;
	}
	
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public void setCantidadPeliculas(int cantidadPeliculas) {
		this.cantidadPeliculas = cantidadPeliculas;
	}

	public int getCantidadPeliculas() {
		return cantidadPeliculas;
	}
	

	

	
	
	

	
	
	
	
	

}
