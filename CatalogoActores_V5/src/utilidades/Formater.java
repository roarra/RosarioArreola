package utilidades;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Formater {
	
	
	public static Date formateador(String texto) throws ParseException {
		
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		Date fecha = format.parse(texto);
		
		
		
		
		return fecha;
	}

}
