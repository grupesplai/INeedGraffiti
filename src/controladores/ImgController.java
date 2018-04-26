package controladores;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import conexion.BDConn;
import modelos.home;

public class ImgController {

	public static List<home> imgTop() {//trae todas las imagenes a Home.jsp

		List<home> theList = new ArrayList<home>();
		
		String sql = "SELECT id_imagenes,imagenes.id_usuario,usuario,imagenes, COUNT(likesimg.bolean) sumalikes FROM imagenes \r\n" + 
				"LEFT JOIN usuario ON usuario.id_usuario=imagenes.id_usuario\r\n" + 
				"LEFT JOIN likesimg ON imagenes.id_imagenes=likesimg.id_img\r\n" + 
				"GROUP BY id_imagenes ORDER BY sumalikes DESC";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				theList.add(new home(
						rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getInt(5)));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return theList;
	}
	
	public static String unaImagenP(int as) {

		String resp = "";
		
		String sql = "SELECT imagen_perfil FROM usuario WHERE id_usuario='"+as+"'";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				resp = rs.getString(1);
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return resp;
	}
	
	public static List<home> getImage(int img){

		List<home> listimagen = new ArrayList<home>();
		String sql ="SELECT id_imagenes,imagenes,description_imagen,usuario.id_usuario,usuario,estilo,fecha"
				+ " FROM imagenes JOIN usuario ON imagenes.id_usuario=usuario.id_usuario\r\n" + 
				"JOIN estilos ON estilos.id_estilo=imagenes.id_estilo WHERE imagenes.id_imagenes ='"+ img +"'";
		
		try (Connection conn = BDConn.getConn();Statement stmt = conn.createStatement()) {
			
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()){
				listimagen.add(new home(
						rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getString(6),rs.getInt(7)));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return listimagen;
	}
	
	public static int getLikes(int id_img) {
		int resp = 0;
		String sql ="SELECT COUNT(id_img) sumalikes FROM likesimg  WHERE id_img='"+id_img+"' GROUP BY id_img";			
		
		try (Connection conn = BDConn.getConn();Statement stmt = conn.createStatement()) {
			
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()){
				resp = rs.getInt(1);
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return resp;
	}
	
	public static void addImage(int id_usu,String imagenes,String desc,String estilo,String fecha){

		String sql =String.format("INSERT INTO imagenes (id_usuario,imagenes,description_imagen,estilo,fecha) VALUES (%d,%s,%s,%s,%s)");			

		try (Connection conn = BDConn.getConn();Statement stmt = conn.createStatement()){
				stmt.executeQuery(sql);
			} catch (Exception e) {
				String s = e.getMessage();
				System.out.println(s);
			}
	}
	public static List<home> getEstilos(){

		List<home> estilos = new ArrayList<home>();
		String sql ="SELECT id_estilo, estilo FROM estilos";			
		
		try (Connection conn = BDConn.getConn();Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()){
				estilos.add(new home(
				rs.getInt(1),rs.getString(2)));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return estilos;
	}
}