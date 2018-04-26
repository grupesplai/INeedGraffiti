package servlets;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import controladores.UsuarioController;

/**
 * Servlet implementation class registro
 */
@WebServlet("/registro")
		@MultipartConfig(fileSizeThreshold=1024*1024*2,	// 2MB
		maxFileSize=1024*1024*10,		// 10MB
		maxRequestSize=1024*1024*50)	// 50MB
public class registro extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "usersPerfil";
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
		
		
		String appPath = "C:\\Users\\harry\\eclipse-workspace\\iGrafitti\\WebContent\\img";
		// constructs path of the directory to save uploaded file
		String savePath = appPath + File.separator + SAVE_DIR;
		System.out.println(savePath);
		// creates the save directory if it does not exists
		File fileSaveDir = new File(savePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdirs();
		}

		if(request.getParameter("modificar") != null ) {//si viene de modificar/editar
			int id_u= Integer.parseInt(request.getParameter("modificar"));
			Part part = request.getPart("file");
			String fileName = extractFileName(part);
			
			// refines the fileName in case it is an absolute path
			fileName = new File(fileName).getName();

			part.write(savePath + File.separator + fileName);
			System.out.println(fileName);

			UsuarioController.modificarUsuario(id_u,nombre, apellidos, mail, movil, nick, password,fileName);
			session.setAttribute("id_usu", id_u);
			response.sendRedirect("perfil.jsp");
		}else {//si viene de registrar usuario
			UsuarioController.creaUsuario(nombre, apellidos, mail, movil, nick, password);
			int id_u= UsuarioController.traeIdUsu(nick, password);

			response.sendRedirect("Home.jsp?id_usu="+id_u);
		}
	}
	
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length()-1);
			}
		}
		return "";
	}
}
