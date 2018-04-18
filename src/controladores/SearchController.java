package controladores;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;

import conexion.BDConn;
import modelos.Search;

public class SearchController {

	public static List<Search> getSearch (String busqueda){
	
		List<Search> uList = new ArrayList<Search>();
		String sql = "SELECT id_imagenes,imagenes.id_usuario,usuario,description_imagen,estilo FROM imagenes JOIN usuario ON imagenes.id_usuario=usuario.id_usuario WHERE description_imagen LIKE '%" + busqueda +"%' OR usuario LIKE '%" + busqueda + "%' OR estilo LIKE '%" + busqueda + "%'";
	try(
	Connection conn = BDConn.getConn();
	Statement stmt = conn.createStatement())
	{

		ResultSet rs = stmt.executeQuery(sql);

		while (rs.next()) {
			uList.add(new Search(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5)));
		}
	}catch(
	Exception e)
	{
		String s = e.getMessage();
		System.out.println(s);
	}return uList;
}}
