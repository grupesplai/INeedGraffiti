package conexion;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.mysql.jdbc.Connection;

public class Login {
	public static int acceso(String user, String pass) {

		String sql = "SELECT id_usuario FROM usuario WHERE usuario= '" + user + "' AND contraseña='" + pass + "' ";
		int resp = -1;

		try (Connection conn = BDConn.getConn(); Statement stmt = conn.createStatement()) {
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				resp = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resp;
		}
}
