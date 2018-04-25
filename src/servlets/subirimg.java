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



@WebServlet("/subirimg")
@MultipartConfig(fileSizeThreshold=1024*1024*2,	// 2MB
				 maxFileSize=1024*1024*10,		// 10MB
				 maxRequestSize=1024*1024*50)	// 50MB
public class subirimg extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * Name of the directory where uploaded files will be saved, relative to
	 * the web application directory.
	 */
	private static final String SAVE_DIR = "img";

	/**
	 * handles file upload
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
    	int id_user = Integer.parseInt(request.getParameter("ussuario"));
    	String comentario = request.getParameter("comentario");
		int estilo = Integer.parseInt(request.getParameter("estilo"));
		String fecha = request.getParameter("fecha");
		
		// gets absolute path of the web application
		//String appPath = request.getServletContext().getRealPath("");
		String appPath = "C:\\Users\\Vic\\eclipse-workspace\\iGrafitti\\WebContent";
		// constructs path of the directory to save uploaded file
		String savePath = appPath + File.separator + SAVE_DIR;
		System.out.println(savePath);
		// creates the save directory if it does not exists
		File fileSaveDir = new File(savePath);
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdirs();
		}

		Part part = request.getPart("file");
			String fileName = extractFileName(part);
			
			// refines the fileName in case it is an absolute path
			fileName = new File(fileName).getName();

			part.write(savePath + File.separator + fileName);
			System.out.println(fileName);
			
			session.setAttribute("ussuario", id_user);
	        session.setAttribute("comentario", comentario);
	        session.setAttribute("estilo", estilo);
	        session.setAttribute("fecha", fecha);
	      
	        
	        
	        UsuarioController.subirimg(id_user, fileName, comentario, estilo, fecha);
			
			
		request.setAttribute("message", "Imagen subida correctamente!");
		getServletContext().getRequestDispatcher("/perfil.jsp").forward(
				request, response);
	}

	/**
	 * Extracts file name from HTTP header content-disposition
	 */
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