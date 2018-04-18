package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controladores.ChatController;

/**
 * Servlet implementation class pasaId
 */
@WebServlet("/pasaId")
public class pasaId extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public pasaId() {
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
		int id_usu = Integer.parseInt(request.getParameter("id_usu"));
		int id_recep=0;
		
		if(request.getParameter("id_recep") != null) {//viene de CONTACTAR <a href>
		id_recep = Integer.parseInt(request.getParameter("id_recep"));
		session.setAttribute("id_em", id_usu);
		session.setAttribute("id_re", id_recep);
		response.sendRedirect("contactos.jsp");
		
		} else if (request.getParameter("id_usua") != null) {//viene de home
			session.setAttribute("id_em", id_usu);
			response.sendRedirect("historial.jsp");
			
		}else if (request.getParameter("id_anun") != null) {//viene de anuncios
			int id_anun = Integer.parseInt(request.getParameter("id_anun"));
			session.setAttribute("id_usu", id_usu);
			session.setAttribute("id_anun", id_anun);
			response.sendRedirect("descMuro.jsp");	
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		session = request.getSession();
		int id_em = Integer.parseInt(request.getParameter("id_emisor"));
		int id_re = Integer.parseInt(request.getParameter("id_recep"));
		String mensa = request.getParameter("mensaje");

		ChatController.creaMensaje(id_em, id_re, mensa);
		session.setAttribute("id_em", id_em);
		session.setAttribute("id_re", id_re);
		response.sendRedirect("contactos.jsp");
	}
}
