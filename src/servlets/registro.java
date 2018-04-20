package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controladores.UsuarioController;

/**
 * Servlet implementation class registro
 */
@WebServlet("/registro")
public class registro extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public registro() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String nombre = request.getParameter("nombreUsuario");
		String apellidos = request.getParameter("apellidosUsuario");
		String mail = request.getParameter("mailUsuario");
		String movil = request.getParameter("movilUsuario");
		String nick = request.getParameter("nickUsuario");
		String password = request.getParameter("passwordUsuario");
		
		if(request.getParameter("modificar") != null ) {//si viene de modificar/editar
			
			int id_u= Integer.parseInt(request.getParameter("modificar"));
			
			System.out.println("modificando "+id_u);
			
			UsuarioController.modificarUsuario(id_u,nombre, apellidos, mail, movil, nick, password);
			
			session.setAttribute("id_usu", id_u);
			response.sendRedirect("perfil.jsp");
		}else {//si viene de registrar usuario
			UsuarioController.creaUsuario(nombre, apellidos, mail, movil, nick, password);
			response.sendRedirect("Home.jsp");
		}

	}

}
