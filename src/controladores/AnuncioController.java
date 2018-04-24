package controladores;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import conexion.BDConn;
import modelos.Anuncios;
import modelos.home;

public class AnuncioController {
	public static List<Anuncios> allAnuncios() {//trae todas las imagenes a Home.jsp

		List<Anuncios> aList = new ArrayList<Anuncios>();
		String sql = "SELECT id_muros,muros.id_usuario,usuario,muro,fecha_muro FROM muros "
				+ "JOIN usuario ON muros.id_usuario=usuario.id_usuario";// falta añadir fecha y likes si se kiere

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				aList.add(new Anuncios(
						rs.getInt(1),rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5)));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return aList;
	}
	
	
	public static List<Anuncios> getAnuncio(int id_muros) {

		List<Anuncios> anun = new ArrayList<Anuncios>();
		String sql = "SELECT id_muros,muros.id_usuario,usuario,muro,fecha_muro,description_muro,muros.comentario "
				+ "FROM muros JOIN usuario ON muros.id_usuario=usuario.id_usuario WHERE id_muros='" + id_muros + "'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				anun.add(new Anuncios(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return anun;
	}
}
