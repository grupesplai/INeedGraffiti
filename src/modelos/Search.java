package modelos;

public class Search {
	
	private int idimagen;
	private int idusuario;
	private String usuario;
	private String descripcion;
	private String estilo;
	
	
	public Search (int idimagen, int idusuario, String usuario, String descripcion, String estilo) {
			this.idimagen = idimagen;
			this.idusuario = idusuario;
			this.usuario = usuario;
			this.descripcion = descripcion;
			this.estilo = estilo;
		}


	public int getIdimagen() {
		return idimagen;
	}


	public void setIdimagen(int idimagen) {
		this.idimagen = idimagen;
	}


	public int getIdusuario() {
		return idusuario;
	}


	public void setIdusuario(int idusuario) {
		this.idusuario = idusuario;
	}


	public String getUsuario() {
		return usuario;
	}


	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}


	public String getDescripcion() {
		return descripcion;
	}


	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public String getEstilo() {
		return estilo;
	}


	public void setEstilo(String estilo) {
		this.estilo = estilo;
	}
	
}
