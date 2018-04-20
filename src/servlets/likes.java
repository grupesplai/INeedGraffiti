package servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
		int id_img = Integer.parseInt(request.getParameter("imglike"));
		int usid = Integer.parseInt(request.getParameter("usid"));
		boolean vdd = UsuarioController.bool(id_img, usid);
		
		
		if (vdd == true) {
			UsuarioController.deletelike(id_img, usid);
			System.out.println("Like borrado");
		} else {
			UsuarioController.addlike(id_img, usid);
			System.out.println("Like a�adido");
		}
		
		int nuevosLikes = UsuarioController.sumlike(id_img);
		
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
	    response.getWriter().write("{\"result\":\"ok\", \"likes\": "+ nuevosLikes +"}");
		
		
		/*
		if (request.getParameter("hom") != null) {
			response.sendRedirect("Home.jsp");
		} else if (request.getParameter("desc") != null) {
			response.sendRedirect("descImagen.jsp");
		} else if (request.getParameter("perf") != null) {
			int sdfs = Integer.parseInt(request.getParameter("usid"));
			response.sendRedirect("perfil.jsp");
		}
		*/
		
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
