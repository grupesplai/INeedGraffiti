package controladores;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import conexion.BDConn;
import modelos.*;

public class ComentarioController {
	
	public static List<Comentario> getComentario(int idImagen){

		List<Comentario> listaComentarios = new ArrayList<Comentario>();
		String sql ="SELECT id_imagen,idcomentario_img,usuario,comentario FROM comentario_img JOIN usuario ON comentario_img.id_emisor=usuario.id_usuario WHERE id_imagen='"+idImagen+"'";
		
		try (Connection conn = BDConn.getConn();Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) { 
				listaComentarios.add(new Comentario(
					rs.getInt(1),
					rs.getInt(2),
					rs.getString(3),
					rs.getString(4)
				));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
	return listaComentarios;
	}
	
	public static List<Comentario> getComentarioMuro(int idMuro){

		List<Comentario> listaComentariosMuro = new ArrayList<Comentario>();
		String sql ="SELECT id_muro,id_comentario_muro, usuario, comentario FROM comentario_muro JOIN usuario ON comentario_muro.id_emisor=usuario.id_usuario WHERE id_muro='"+idMuro+"'";
		
		try (Connection conn = BDConn.getConn();
		Statement stmt = conn.createStatement()) {
			
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) { 
				listaComentariosMuro.add(new Comentario(
					rs.getInt(1),
					rs.getInt(2),
					rs.getString(3),
					rs.getString(4)
				));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
	return listaComentariosMuro;
	}
	
	public static void creaComentari(int id_usu, String coment,int idImagen) {

		String sql = String.format("INSERT INTO comentario_img (id_emisor,comentario,id_imagen) VALUES (\"%d\",\"%s\",\"%d\")",id_usu,coment, idImagen);

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			stmt.executeUpdate(sql);

		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}

	}
	public static void creaComentariMuro(int id_usu, String coment,int idMuro) {
		String sql = String.format("INSERT INTO comentario_muro (id_emisor,comentario,id_muro) values (\"%d\",\"%s\",\"%s\")",id_usu,coment, idMuro);

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			stmt.executeUpdate(sql);

		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}

	}

}
