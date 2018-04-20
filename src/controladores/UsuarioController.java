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
	public static List<Usuario> getPerfil2(int id_au) {

		List<Usuario> uList = new ArrayList<Usuario>();
		String sql = "SELECT id_usuario,usuario,mail,movil,imagen_perfil FROM usuario WHERE id_usuario='" + id_au + "' ";
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

	public static List<Usuario> getImagen(int id_usu) throws SQLException {

		List<Usuario> listimagen = new ArrayList<Usuario>();

		String sql = "SELECT imagenes,description_imagen,estilo,fecha, SUM(bolean) AS sumlikes  FROM imagenes LEFT JOIN likesimg ON imagenes.id_imagenes=likesimg.id_img WHERE imagenes.id_usuario='" + id_usu + "' GROUP BY id_imagenes ORDER BY fecha_de_pubblication DESC ";
		
		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				listimagen.add(new Usuario(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString("sumlikes")));
			}
		}
		return listimagen;
	}

	public static List<Usuario> getImagen2(int id_au) throws SQLException {

		List<Usuario> listimagen = new ArrayList<Usuario>();
		String sql = "SELECT imagenes,description_imagen,estilo,fecha, SUM(bolean) AS sumlikes  FROM imagenes LEFT JOIN likesimg ON imagenes.id_imagenes=likesimg.id_img WHERE imagenes.id_usuario='" + id_au + "' GROUP BY id_imagenes ORDER BY fecha_de_pubblication DESC ";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				listimagen.add(new Usuario(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4),
						rs.getString(5), rs.getString(6)));
			}
		}
		return listimagen;
	}

	public static List<Anuncios> getAnuncio(int id_usu) throws SQLException {

		List<Anuncios> listimagen = new ArrayList<Anuncios>();
		String sql = "SELECT usuario,muro,description_muro,fecha_muro FROM muros JOIN usuario ON muros.id_usuario=usuario.id_usuario WHERE muros.id_usuario='"
				+ id_usu + "' ORDER BY fecha_muro DESC";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				listimagen.add(new Anuncios(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
			}
		}
		return listimagen;
	}

	public static List<Anuncios> getAnuncio2(int id_au) throws SQLException {

		List<Anuncios> listimagen = new ArrayList<Anuncios>();
		String sql = "SELECT usuario,muro,description_muro,fecha_muro FROM muros JOIN usuario ON muros.id_usuario=usuario.id_usuario WHERE muros.id_usuario='"
				+ id_au + "' ORDER BY fecha_muro DESC";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				listimagen.add(new Anuncios(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return listimagen;
	}


	public static void deletelike(int imglike, int usid) {

		String sql = "DELETE FROM likesimg WHERE likesimg.id_img='"+ imglike + "' AND likesimg.id_usuario='" + usid + "'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			stmt.executeUpdate(sql);

		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}

	}
	public static void addlike(int imglike, int usid) {

		String sql = String.format("INSERT INTO likesimg (id_img,id_usuario,bolean) VALUES (\"%s\", \"%s\", 1)", imglike,usid);
		
		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			stmt.executeUpdate(sql);

		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}

	}

	public static boolean bool(int imglike, int usid) {

		String sql = "SELECT bolean FROM likesimg WHERE id_img='" + imglike + "'  AND id_usuario='" + usid + "'";
		int resp = 3;
		boolean vdd;

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				resp = rs.getInt(1);
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		if (resp == 1) {
			vdd = true;
		}else{
			vdd= false;
		}
		return vdd;
	}
	public static int sumlike(int imglike) {

		String sql = "select sum(bolean) FROM likesimg WHERE id_img='" + imglike+"'";
		int resp=0;

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				resp = rs.getInt(1);
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return resp;
	}
	
	public static void subirimg(int id_user, String fileName, String comentario, String estilo, String fecha) {

		String sql = String.format(
				"INSERT INTO imagenes (id_usuario, imagenes, description_imagen, estilo, fecha) VALUES (\"%s\",\"%s\", \"%s\", \"%s\", \"%s\")",
				id_user, fileName, comentario, estilo, fecha);

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
	}
	
}
