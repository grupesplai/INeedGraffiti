package servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import controladores.ImgController;
import controladores.UsuarioController;
import modelos.Usuario;

/**
 * Servlet implementation class perfil
 */
@WebServlet("/perfil")
public class perfil extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public perfil() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		int id_user = Integer.parseInt(request.getParameter("id_usu"));
		int id_au=0;

			if(request.getParameter("id_autor") != null) {
				id_au = Integer.parseInt(request.getParameter("id_autor"));
				session.setAttribute("id_usu", id_au);
			}else {
				session.setAttribute("id_usu", id_user);
			}
			response.sendRedirect("perfil.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
