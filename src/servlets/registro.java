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
	HttpSession session;

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
		session = request.getSession();
				int id_usu = Integer.parseInt( request.getParameter("id_usu"));
				session.setAttribute("id_usu",id_usu);
				response.sendRedirect("editar.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nombre = request.getParameter("nombreUsuario");
		String apellidos = request.getParameter("apellidosUsuario");
		String mail = request.getParameter("mailUsuario");
		String movil = request.getParameter("movilUsuario");
		String nick = request.getParameter("nickUsuario");
		String password = request.getParameter("passwordUsuario");
		
		if(request.getParameter("modificar") != null ) {//si viene de modificar/editar
			int id_u= Integer.parseInt(request.getParameter("modificar"));
			UsuarioController.modificarUsuario(id_u,nombre, apellidos, mail, movil, nick, password);
			session.setAttribute("id_usu", id_u);
			response.sendRedirect("perfil.jsp");
		}else {//si viene de registrar usuario
			UsuarioController.creaUsuario(nombre, apellidos, mail, movil, nick, password);
			int id_u= UsuarioController.traeIdUsu(nick, password);

			response.sendRedirect("Home.jsp?id_usu="+id_u);
		}
	}
}
