package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Conexao {
	
	public static void conectar() {
		try {
			Class.forName("com.mysql.cj.jbc.Driver");
			Connection con=DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/agenda", "root", "root");
			PreparedStatement stmt= con.prepareStatement("select * from contato");
			System.out.println("Conectado");
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
}