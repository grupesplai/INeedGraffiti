package modelos;

public class search {
	
	private int idimagen;
	private int idusuario;
	private String usuario;
	private String descripcion;
	private String estilo;
	
	
	public search (int id_img, int idusuario, String usuNom, String url, String likes) { //constructor para traer imagenes a Home.jsp
			this.idimagen = idimagen;
			this.idusuario = idusuario;
			this.usuario = usuario;
			this.descripcion = descripcion;
			this.estilo = estilo;
		}
	
}
