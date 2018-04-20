package controladores;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import conexion.BDConn;
import modelos.Usuario;

public class SearchController {

	public List<Usuario> getList(int id_usu) {
		
		List<Usuario> uList = new ArrayList<Usuario>();
		String sql = "SELECT id_usuario,usuario,mail,movil,imagen_perfil FROM usuario WHERE id_usuario='" + id_usu
				+ "'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				uList.add(
						new Usuario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return uList;
	}

}
