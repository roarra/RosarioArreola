package utilidades;

import java.util.Scanner;

public class Utilidades {

	public static void write(String mensaje) {

		System.out.println(mensaje);
	}

	public static String readString() {

		Scanner teclado = new Scanner(System.in);

		String palabra = teclado.nextLine();

		return palabra;

	}

	public static String readString(String mensaje) {

		write(mensaje);

		String palabra = new Scanner(System.in).nextLine();

		return palabra;

	}

	public static int readInt() {

		int numero = new Scanner(System.in).nextInt();

		return numero;
	}

	public static int readInt(String mensaje) {

		write(mensaje);

		int numero = new Scanner(System.in).nextInt();

		return numero;
	}

}
