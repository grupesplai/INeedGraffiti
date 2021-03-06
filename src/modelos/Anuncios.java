package modelos;

public class Anuncios {
	
	private String url;
	private int idMuro;
	private int idUsuario;
	private String nomUsuario;
	private String descripcion;
	private String fechas;
	private String comentario;
	
	public Anuncios(int id_img, int id_usu, String usuNom, String url, String fecha, String descripcion, String comentario ) {
		this.idMuro = id_img;
		this.idUsuario = id_usu;
		this.nomUsuario = usuNom;
		this.url = url;
		this.fechas = fecha;
		this.descripcion = descripcion;
		this.comentario = comentario;
	}
	
	public Anuncios(int id_muro,int id_usu, String nomUsu, String url, String fechas) {
		this.idMuro = id_muro;
		this.idUsuario = id_usu;
		this.nomUsuario = nomUsu;
		this.url = url;
		this.fechas = fechas;

	}
	
	public Anuncios(int id_anun,String usuario, String muro, String descripcion, String fecha) {
		this.idMuro = id_anun;
		this.nomUsuario= usuario;
		this.url = muro;
		this.descripcion = descripcion;
		this.fechas = fecha;
	}
	
	public int getIdImagen() {
		return idMuro;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public String getNomUsuario() {
		return nomUsuario;
	}

	public String getUrl() {
		return url;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public String getFecha() {
		return fechas;
	}
	public String getComentario() {
		return comentario;
	}
}
