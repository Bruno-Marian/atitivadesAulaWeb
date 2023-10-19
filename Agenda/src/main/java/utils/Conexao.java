package utils;

import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.PreparedStatement;

public class Conexao {
	public static void conectar() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/aulas", "root", "root");
			//PreparedStatement stmt= con.prepareStatement("select * from tb_contatos");
			System.out.println("Conectado");
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	
	public static Connection getConexao() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/aulas", "root", "root");
		}
		catch(Exception e) {
			System.out.println(e);
		}
		
		return con;
	}
}
