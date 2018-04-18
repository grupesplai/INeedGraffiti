package servlets;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import conexion.BDConn;
import controladores.UsuarioController;

/**
 * Servlet implementation class likes
 */
@WebServlet("/likes")
public class likes extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public likes() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id_img = 0;
		int usid = 0;
		boolean vdd=false;

		if (request.getParameter("imglike") != null) {
			id_img = Integer.parseInt(request.getParameter("imglike"));
			usid = Integer.parseInt(request.getParameter("usid"));
			
			vdd = UsuarioController.bool(id_img,usid);
			
			if (vdd == true) {
				UsuarioController.deletelike(id_img,usid);
				response.sendRedirect("Home.jsp");
			} else{
				UsuarioController.addlike(id_img,usid);
				response.sendRedirect("Home.jsp");
		}
		if (request.getParameter("imglikeau") != null) {
			id_img = Integer.parseInt(request.getParameter("imglikeau"));
			usid = Integer.parseInt(request.getParameter("usid"));
			
			vdd = UsuarioController.bool(id_img,usid);
			
			if (vdd == true) {
				UsuarioController.deletelike(id_img,usid);
				response.sendRedirect("perfil_autor.jsp");
			}else {
				UsuarioController.addlike(id_img,usid);
				response.sendRedirect("perfil_autor.jsp");
			}
		}
	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
}
