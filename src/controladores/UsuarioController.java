package controladores;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import conexion.BDConn;
import modelos.*;

public class UsuarioController {

	public static String traeNick(int id_usu) {//puede que no se llame (deberia llamarse desde "sesion.jsp")
		String nick = "";
		String sql = "SELECT usuario FROM usuario WHERE id_usuario=" + id_usu;

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				nick = rs.getString(1);
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return nick;
	}

	public static void creaUsuario(String nombre, String apellidos, String mail, String movil, String nick,
			String password) {

		String sql = String.format(
				"INSERT INTO usuario (nombre, apelido, usuario, mail, movil, contraseña) VALUES (\"%s\", \"%s\", \"%s\", \"%s\", \"%s\", \"%s\")",
				nombre, apellidos, nick, mail, movil, password);

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
	}

	public static List<Usuario> getPerfil(int id_usu) {

		List<Usuario> uList = new ArrayList<Usuario>();
		String sql = "SELECT id_usuario,usuario,mail,movil,imagen_perfil FROM usuario WHERE id_usuario='"+id_usu+"'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				uList.add(new Usuario(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)
						));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return uList;
	}
}
