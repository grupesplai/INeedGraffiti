package controladores;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import conexion.BDConn;
import modelos.Chat;

public class ChatController {

	public static List<Chat> getChat(int id_emi, int id_recep) {

		List<Chat> uList = new ArrayList<Chat>();
		String sql = "SELECT id_emisor,id_receptor,mensaje,fecha FROM mensajes WHERE (id_emisor='"+id_emi+"' AND id_receptor = '"+id_recep+"') "
				+ "OR (id_emisor='"+id_recep+"' AND id_receptor = '"+id_emi+"')";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				uList.add(new Chat(
						rs.getInt(1),rs.getInt(2),rs.getString(3),rs.getString(4)
						));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return uList;
	}
	
	public static String fecha_convertida(int id_men) {//SELECT date_format(fecha,'%W-%M-%Y  %h:%i') fecha_convertida from mensajes;

		String fecha ="";
		String sql = "SELECT fecha FROM mensajes WHERE id_mensajes = '"+id_men+"')";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
						fecha = rs.getString(1);
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return fecha;
	}
	
	public static List<Chat> getHistorial(int id_emi) {

		List<Chat> uList = new ArrayList<Chat>();
		String sql = "SELECT id_receptor FROM mensajes WHERE id_emisor='"+id_emi+"' GROUP BY id_receptor";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				uList.add(new Chat(rs.getInt(1)));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return uList;
	}
	
	public static String getNomUsu(int id_usu) {
		String nom = "";
		String sql = "SELECT usuario FROM usuario WHERE id_usuario = '"+id_usu+"'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				nom = rs.getString(1);
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return nom;
	}
	
	public static void creaMensaje(int id_emisor, int id_recep, String mensaje) {

		String sql = "INSERT INTO mensajes (id_emisor,id_receptor,mensaje) VALUES ('"+id_emisor+"','"+id_recep+"','"+ mensaje +"')";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
	}
}
