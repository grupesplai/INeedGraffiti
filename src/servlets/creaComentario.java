package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controladores.ComentarioController;
/**
 * Servlet implementation class creaComentarioImg
 */
@WebServlet("/creaComentario")
public class creaComentario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public creaComentario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id_img = Integer.parseInt( request.getParameter("id_img"));
		String comentario = request.getParameter("comentario");
		int id_usu = Integer.parseInt( request.getParameter("id_usu"));
		
		if(request.getParameter("tipusComentari").equals("coment_img")) {
			ComentarioController.creaComentari(id_usu, comentario, id_img);
			
		} else if(request.getParameter("tipusComentari").equals("coment_muro")) {
			ComentarioController.creaComentariMuro(id_usu, comentario, id_img);
		}
		response.sendRedirect("descImagen.jsp");
	}
}
