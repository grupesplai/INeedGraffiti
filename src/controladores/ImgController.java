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
		String sql = "SELECT id_imagenes,imagenes.id_usuario,usuario,imagenes,SUM(bolean) AS sumlikes FROM imagenes JOIN usuario ON imagenes.id_usuario=usuario.id_usuario JOIN likesimg ON imagenes.id_imagenes=likesimg.id_img GROUP BY id_img ORDER BY sumlikes DESC";

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {

			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				theList.add(new home(
						rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString("sumlikes")));
			}
		} catch (Exception e) {
			String s = e.getMessage();
			System.out.println(s);
		}
		return theList;
	}
	
	public static List<home> getImage(int img){

		List<home> listimagen = new ArrayList<home>();
		String sql ="SELECT id_imagenes,imagenes,description_imagen,usuario.id_usuario,usuario,estilo,fecha FROM imagenes "
				+ "JOIN usuario ON imagenes.id_usuario=usuario.id_usuario WHERE id_imagenes='"+ img +"'";			
		
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
	
	public static void addImage(int id_usu,String imagenes,String desc,String estilo,String fecha){

		String sql =String.format("INSERT INTO imagenes (id_usuario,imagenes,description_imagen,estilo,fecha) VALUES (%d,%s,%s,%s,%s)");			

		try (Connection conn = BDConn.getConn();Statement stmt = conn.createStatement()){
				stmt.executeQuery(sql);
			} catch (Exception e) {
				String s = e.getMessage();
				System.out.println(s);
			}
	}
}