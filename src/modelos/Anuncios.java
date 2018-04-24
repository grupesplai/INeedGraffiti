package modelos;

public class Anuncios {
	
	private String url;
	private int idMuro;
	private int idUsuario;
	private String nomUsuario;
	private String descripcion;
	private int fecha;
	private String fechas;
	private String comentario;
	
	public Anuncios(int id_img, int id_usu, String usuNom, String url, int fecha, String descripcion, String comentario ) {
		this.idMuro = id_img;
		this.idUsuario = id_usu;
		this.nomUsuario = usuNom;
		this.url = url;
		this.fecha = fecha;
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
	
	public String getFechas() {
		return fechas;
	}

	public void setFechas(String fechas) {
		this.fechas = fechas;
	}

	public Anuncios(String usuario, String muro, String descripcion, String fecha) {
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
	public int getFecha() {
		return fecha;
	}
	public String getComentario() {
		return comentario;
	}
}
