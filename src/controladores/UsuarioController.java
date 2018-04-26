package controladores;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;

import com.mysql.jdbc.Connection;

import conexion.BDConn;
import modelos.*;

public class UsuarioController {

	public static String traeNick(int id_usu) {//puede que no se llame (deberia llamarse desde "sesion.jsp")
		String nick = "";
		String sql = "SELECT usuario FROM usuario WHERE id_usuario='" + id_usu+"'";

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

		String sql = "INSERT INTO usuario (nombre, apelido, usuario, mail, movil, contraseña) VALUES (?,?,?,?,?,?)";

		try (Connection conn = BDConn.getConn();PreparedStatement pstmt = conn.prepareStatement(sql)) {
			
				pstmt.setString(1, nombre);
				pstmt.setString(2, apellidos);
				pstmt.setString(3, nick);
				pstmt.setString(4, mail);
				pstmt.setString(5, movil);
				pstmt.setString(6, password);
				pstmt.executeUpdate();
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
	}
	
	public static int traeIdUsu(String nick, String pass) {
		int id_usu = 0;
		String sql = "SELECT id_usuario FROM usuario WHERE usuario='" + nick+"' AND contraseña='"+pass+"'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				id_usu = rs.getInt(1);
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return id_usu;
	}

	public static String buscaAutor(int id_autor) {
		String resp = "";
		String sql = "SELECT usuario FROM usuario WHERE id_usuario='" + id_autor+"'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				resp = rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return resp;
	}

	
	public static List<Usuario> getPerfil(int id_usu) {

		List<Usuario> uList = new ArrayList<Usuario>();
		String sql = "SELECT id_usuario,usuario,mail,movil,imagen_perfil FROM usuario WHERE id_usuario='"+id_usu+"'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			sql= sql.replaceAll("''", "null");
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


	public static List<Anuncios> getAnuncio(int id_usu) throws SQLException {

		List<Anuncios> listimagen = new ArrayList<Anuncios>();
		String sql = "SELECT id_muros,usuario,muro,description_muro,fecha_muro FROM muros JOIN usuario "
				+ "ON muros.id_usuario=usuario.id_usuario WHERE muros.id_usuario='"+ id_usu + "' ORDER BY fecha_muro DESC";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				listimagen.add(new Anuncios(
						rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
			}
		}
		return listimagen;
	}


	public static void deletelike(int imglike, int usid) {

		String sql = "DELETE FROM likesimg WHERE likesimg.id_img="+ imglike + " AND likesimg.id_usuario=" + usid;

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

		String sql = "SELECT bolean FROM likesimg WHERE id_img=" + imglike + " AND id_usuario=" + usid;
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

	
	public static void subirimg(int id_user, String fileName, String comentario, int estilo, String fecha) {

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
	
	public static void subiranuncio(int id_user, String fileName,  String descripcion) {

		String sql = String.format(
				"INSERT INTO muros (id_usuario, muro, description_muro) VALUES (\"%s\", \"%s\", \"%s\")",
				id_user, fileName, descripcion);

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			stmt.executeUpdate(sql);
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
	}
	
	public static void modificarUsuario(int id_u,String nombre, String apellido, String mail, String movil, String nick,
			String password,String img_perfil) {
		
		String sql = "UPDATE usuario SET nombre = ?, apelido =?,usuario=?, mail=?, " + 
				"movil=?, contraseña=?,imagen_perfil=? WHERE id_usuario=?";
	
		try (Connection conn = BDConn.getConn();PreparedStatement pstmt = conn.prepareStatement(sql)) {
	
			pstmt.setString(1, nombre);
			pstmt.setString(2, apellido);
			pstmt.setString(3, nick);
			pstmt.setString(4, mail);
			pstmt.setString(5, movil);
			pstmt.setString(6, password);
			pstmt.setString(7, img_perfil);
			pstmt.setInt(8, id_u);
			
			pstmt.executeUpdate();
		} catch (Exception e) {
			String s = e.getMessage();
		System.out.println(s);
		}
}
}
