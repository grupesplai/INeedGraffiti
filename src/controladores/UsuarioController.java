package controladores;

import java.sql.PreparedStatement;
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

		String sql2 = 
				"INSERT INTO usuario (nombre, apelido, usuario, mail, movil, contraseña) VALUES (?,?,?,?,?,?)";
				

		try (Connection conn = BDConn.getConn();
				PreparedStatement pstmt = conn.prepareStatement(sql2)) {

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
	public static List<Usuario> getPerfil(int id_usu) {

		List<Usuario> uList = new ArrayList<Usuario>();
		String sql = "SELECT id_usuario,usuario,mail,movil,imagen_perfil,contraseña,apelido,nombre FROM usuario WHERE id_usuario='"
				+ id_usu + "'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				uList.add(new Usuario(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8)));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return uList;
	}

	public static List<Usuario> getImagen(int id_usu) throws SQLException {

		List<Usuario> listimagen = new ArrayList<Usuario>();

			String sql = "SELECT imagenes,description_imagen,estilo,fecha, COUNT(likesimg.bolean) sumalikes FROM imagenes " + 
					"LEFT JOIN likesimg ON imagenes.id_imagenes=likesimg.id_img " + 
					"LEFT JOIN estilos ON imagenes.id_estilo=estilos.id_estilo "+ 
					"WHERE imagenes.id_usuario='"+id_usu+"' GROUP BY id_imagenes ORDER BY sumalikes DESC";
		
		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				listimagen.add(new Usuario(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
			}
		}
		return listimagen;
	}

	public static List<Anuncios> getAnuncio(int id_usu) throws SQLException {

		List<Anuncios> listimagen = new ArrayList<Anuncios>();
		String sql = "SELECT usuario,muro,description_muro,fecha_muro FROM muros JOIN usuario "
				+ "ON muros.id_usuario=usuario.id_usuario WHERE muros.id_usuario='"+ id_usu + "' ORDER BY fecha_muro DESC";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				listimagen.add(new Anuncios(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
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
	public static void modificarUsuario(int id_u,String nombre, String apellido, String mail, String movil, String nick,
			String password) {

		/*String sql = "UPDATE usuario SET nombre = '"+nombre+"', apelido ='"+apellido+"',usuario='"+nick+"', mail='"+mail+"', " + 
				"movil='"+movil+"', contraseña='"+password+"' WHERE id_usuario='"+id_u+"'";*/
		
		String sql = "UPDATE usuario SET nombre = ?, apelido =?,usuario=?, mail=?, " + 
				"movil=?, contraseña=? WHERE id_usuario=?";

		System.out.println("entrada en modificar");
		
		try (Connection conn = BDConn.getConn();
				PreparedStatement pstmt = conn.prepareStatement(sql)) {

			pstmt.setString(1, nombre);
			pstmt.setString(2, apellido);
			pstmt.setString(3, nick);
			pstmt.setString(4, mail);
			pstmt.setString(5, movil);
			pstmt.setString(6, password);
			pstmt.setInt(7, id_u);
			pstmt.executeUpdate();
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
	}
}
